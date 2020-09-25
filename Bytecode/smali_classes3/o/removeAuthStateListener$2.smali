.class final Lo/removeAuthStateListener$2;
.super Lo/onSessionDestroyed;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeAuthStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/removeAuthStateListener;


# direct methods
.method constructor <init>(Lo/removeAuthStateListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lo/removeAuthStateListener$2;->onMessageChannelReady:Lo/removeAuthStateListener;

    invoke-direct {p0}, Lo/onSessionDestroyed;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    .line 82
    iget-object p1, p0, Lo/removeAuthStateListener$2;->onMessageChannelReady:Lo/removeAuthStateListener;

    iget-boolean p1, p1, Lo/removeAuthStateListener;->onPostMessage:Z

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->onMessageChannelReady(Z)V

    return-void
.end method
