.class final Lo/rotateLeft$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rotateLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/emptyMap;

.field private synthetic onPostMessage:Lo/rotateLeft;


# direct methods
.method constructor <init>(Lo/rotateLeft;Lo/emptyMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lo/rotateLeft$ICustomTabsCallback;->onPostMessage:Lo/rotateLeft;

    iput-object p2, p0, Lo/rotateLeft$ICustomTabsCallback;->extraCallback:Lo/emptyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 395
    iget-object v0, p0, Lo/rotateLeft$ICustomTabsCallback;->onPostMessage:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->onPostMessage(Lo/rotateLeft;)Lo/colorFlip;

    move-result-object v0

    iget-object v1, p0, Lo/rotateLeft$ICustomTabsCallback;->extraCallback:Lo/emptyMap;

    invoke-interface {v0, v1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    return-void
.end method
