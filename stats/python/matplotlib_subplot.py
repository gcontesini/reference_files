import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns

def main() -> None:
    size = 100
    frequency = 10
    x_coord = np.arange(size)
    y_coord = np.sin((frequency*np.pi*x_coord/size))**2

    fig, axs = plt.subplots(2, 1)

    glue = sns.load_dataset("glue").pivot(index="Model", columns="Task", values="Score")
    ax = sns.heatmap(
        glue,
        annot=False,
        fmt='.2f',
        xticklabels=False,
        yticklabels=False,
        cbar=False,
        cmap="YlGnBu"
    )

    # plt.title('A double plot')
    fig.suptitle('Big Title')

    axs[0].set_title('First title')
    axs[0].set_ylabel('func')
    axs[1].set_xlabel('domain')
    axs[0].set_xticks([])

    # axs[1].set_title('Second title')
    # axs[1].set_xlabel('domain')
    # axs[1].set_ylabel('func')

    axs[0].grid(
        linewidth=0.5,
        linestyle='dashed',
        alpha=0.3,
        color="grey"
    )
    axs[1].grid(
        linewidth=0.5,
        linestyle='dashed',
        alpha=0.3,
        color="grey"
    )
    axs[0].plot(x_coord, y_coord)
    axs[1] = ax

    plt.tight_layout()
    plt.show( block= True)

if __name__ == "__main__":
    main()