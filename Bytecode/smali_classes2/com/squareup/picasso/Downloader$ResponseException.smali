.class public Lcom/squareup/picasso/Downloader$ResponseException;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseException"
.end annotation


# instance fields
.field public final extraCallback:I

.field public final onNavigationEvent:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p2}, Lo/lambda$addTokenChangeListener$2;->onPostMessage(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/squareup/picasso/Downloader$ResponseException;->onNavigationEvent:Z

    .line 51
    iput p3, p0, Lcom/squareup/picasso/Downloader$ResponseException;->extraCallback:I

    return-void
.end method
