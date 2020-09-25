.class public final Lo/getAndroidDisplayRatio;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final extraCallback:Landroid/content/res/Resources;

.field public final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    .line 4
    sget v0, Lo/getCustomAmount$onMessageChannelReady;->common_google_play_services_unknown_issue:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 7
    iget-object v0, p0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    iget-object v1, p0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
