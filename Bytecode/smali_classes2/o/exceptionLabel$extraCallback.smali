.class public final Lo/exceptionLabel$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getAppFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/exceptionLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/ClaimedRewardHolder$Companion;",
        "",
        "()V",
        "ARCHIVE",
        "",
        "SHARE",
        "SUPPORT",
        "UNARCHIVE",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/onVerificationFailed;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/exceptionLabel$extraCallback;->ICustomTabsCallback:Lo/onVerificationFailed;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 10

    .line 2000
    iget-object v0, p0, Lo/exceptionLabel$extraCallback;->ICustomTabsCallback:Lo/onVerificationFailed;

    check-cast p1, Ljava/util/List;

    .line 3000
    iget-object v1, v0, Lo/onVerificationFailed;->onMessageChannelReady:Lo/lambda$of$1;

    invoke-virtual {v1}, Lo/lambda$of$1;->extraCallback()I

    move-result v1

    invoke-virtual {v0}, Lo/onVerificationFailed;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lo/onVerificationFailed;->onPostMessage(Ljava/io/File;)J

    move-result-wide v5

    int-to-long v7, v1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    invoke-static {v4}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
