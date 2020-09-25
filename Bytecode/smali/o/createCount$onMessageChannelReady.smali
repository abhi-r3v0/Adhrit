.class public final Lo/createCount$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/createCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field extraCallback:Z

.field onMessageChannelReady:Landroid/nfc/Tag;

.field onNavigationEvent:Lo/createCount$onPostMessage;


# direct methods
.method public constructor <init>(Lo/createCount$onPostMessage;Landroid/content/Intent;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/createCount$onMessageChannelReady;->onNavigationEvent:Lo/createCount$onPostMessage;

    const-string p1, "android.nfc.extra.TAG"

    .line 32
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/nfc/Tag;

    iput-object p1, p0, Lo/createCount$onMessageChannelReady;->onMessageChannelReady:Landroid/nfc/Tag;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lo/createCount$onMessageChannelReady;->extraCallback:Z

    return-void
.end method
