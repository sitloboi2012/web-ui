from huggingface_hub import snapshot_download, login
import os
from dotenv import load_dotenv

load_dotenv(".env")


def main():
    try:
        print("Welcome to the model download script")
        print("-----------------------")
        login()
        print("Logged in successfully")

        repo_id = str(input("Enter the repository id: "))
        repo_type = str(input("Enter the repo type: "))
        local_dir = f"~/web-ui/models/{repo_id.split('/')[-1]}"

        if repo_type not in ["model", "dataset"]:
            raise Exception("Invalid repo type")

        if not os.path.isdir(local_dir):
            os.mkdir(local_dir)

        snapshot_download(
            repo_id=repo_id,
            repo_type=repo_type,
            local_dir=local_dir,
            token=os.getenv("HF_TOKEN"),
            resume_download=True,
        )

        print("Download repository completed successfully !")

        return True
    except Exception as e:
        print(f"Error: {e}")
        return False


if __name__ == "__main__":
    main()