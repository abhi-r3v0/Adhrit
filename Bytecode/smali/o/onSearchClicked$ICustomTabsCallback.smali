.class public final Lo/onSearchClicked$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSearchClicked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u0015*\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0016\u0010\u001b\u001a\u00020\u0015*\u00020\u00102\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001aH\u0002R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n \u0007*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0007*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0007*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u0007*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/template1/CertificateTemplate2;",
        "Lkotlinx/android/extensions/LayoutContainer;",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "cardBackground",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "containerView",
        "getContainerView",
        "()Landroid/view/View;",
        "logoView",
        "Landroid/widget/ImageView;",
        "shimGradient",
        "shimSolid",
        "text1",
        "Landroid/widget/TextView;",
        "text2",
        "text3",
        "getView",
        "present",
        "",
        "certificateResponse",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
        "setUrl",
        "url",
        "",
        "showText",
        "text",
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
.field public final ICustomTabsCallback:Landroid/widget/TextView;

.field private final ICustomTabsCallback$Stub:Landroid/view/View;

.field public final asBinder:Landroid/view/View;

.field public final asInterface:Landroid/view/View;

.field public final extraCallback:Lo/setSpeed;

.field public final onMessageChannelReady:Landroid/widget/TextView;

.field public final onNavigationEvent:Landroid/widget/ImageView;

.field public final onPostMessage:Landroid/widget/TextView;

.field public final onTransact:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->asBinder:Landroid/view/View;

    .line 2021
    iput-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 2022
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBackground:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->extraCallback:Lo/setSpeed;

    .line 4021
    iget-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 2023
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->logoView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->onNavigationEvent:Landroid/widget/ImageView;

    .line 5021
    iget-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 2024
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 6021
    iget-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 2025
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->onMessageChannelReady:Landroid/widget/TextView;

    .line 7021
    iget-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 2026
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->onPostMessage:Landroid/widget/TextView;

    .line 8021
    iget-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 2027
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->shimGradient:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->asInterface:Landroid/view/View;

    .line 9021
    iget-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 2028
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->shimSolid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/onSearchClicked$ICustomTabsCallback;->onTransact:Landroid/view/View;

    return-void
.end method

.method public static onNavigationEvent(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 1094
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const-string p1, ""

    .line 1095
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method