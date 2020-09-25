.class final Lo/normalizeValue$ICustomTabsCallback$3;
.super Lo/childMovedChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/normalizeValue$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/normalizeValue$ICustomTabsCallback;


# direct methods
.method varargs constructor <init>(Lo/normalizeValue$ICustomTabsCallback;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lo/normalizeValue$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/normalizeValue$ICustomTabsCallback;

    invoke-direct {p0, p2, p3}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 746
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/normalizeValue$ICustomTabsCallback;

    iget-object v0, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v0, v0, Lo/normalizeValue;->onMessageChannelReady:Lo/normalizeValue$extraCallback;

    iget-object v1, p0, Lo/normalizeValue$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/normalizeValue$ICustomTabsCallback;

    iget-object v1, v1, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-virtual {v0, v1}, Lo/normalizeValue$extraCallback;->ICustomTabsCallback(Lo/normalizeValue;)V

    return-void
.end method
