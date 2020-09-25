.class final Lo/setEnterSharedElementCallback$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEnterSharedElementCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setEnterSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setEnterSharedElementCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setEnterSharedElementCallback$onTransact;->ICustomTabsCallback:Lo/setEnterSharedElementCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 132
    iget-object p1, p0, Lo/setEnterSharedElementCallback$onTransact;->ICustomTabsCallback:Lo/setEnterSharedElementCallback;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->whatsappConsentCheckBox:I

    invoke-virtual {p1, p2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const-string/jumbo p2, "whatsappConsentCheckBox"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 1000
    sget-object p1, Lo/setTrackTintMode;->ICustomTabsService$Stub:Lo/setTitleTextColor;

    sget-object p2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v0, 0x18

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    :cond_0
    iget-object p1, p0, Lo/setEnterSharedElementCallback$onTransact;->ICustomTabsCallback:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object p2, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, p2}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void

    .line 135
    :cond_1
    iget-object p1, p0, Lo/setEnterSharedElementCallback$onTransact;->ICustomTabsCallback:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object p2, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, p2}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method
