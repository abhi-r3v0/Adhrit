.class public final Lcom/bumptech/glide/load/HttpException;
.super Ljava/io/IOException;
.source ""


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Http request failed with status code: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 0

    const/4 p2, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;B)V

    return-void
.end method
