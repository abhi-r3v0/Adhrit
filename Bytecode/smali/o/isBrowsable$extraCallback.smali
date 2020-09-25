.class final Lo/isBrowsable$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isBrowsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field final onPostMessage:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 221
    new-instance v0, Lo/isBrowsable$extraCallback;

    new-instance v1, Lo/isBrowsable$extraCallback$1;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lo/isBrowsable$extraCallback$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/isBrowsable$extraCallback;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {p1}, Lo/isBrowsable;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lo/isBrowsable$extraCallback;->onPostMessage:Ljava/lang/Throwable;

    return-void
.end method
