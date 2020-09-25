.class public final Lo/setReenterTransition$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setReenterTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J9\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/widget/ErrorToast;",
        "",
        "()V",
        "lastToast",
        "Landroid/widget/Toast;",
        "getLastToast",
        "()Landroid/widget/Toast;",
        "setLastToast",
        "(Landroid/widget/Toast;)V",
        "showErrorToast",
        "",
        "context",
        "Landroid/content/Context;",
        "text",
        "",
        "isLongToast",
        "",
        "yOffset",
        "",
        "colorRes",
        "(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;)V",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private onMessageChannelReady:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V
    .locals 6

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p4

    const-string v0, "Resources.getSystem()"

    invoke-static {p4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    const/4 v0, 0x1

    const/high16 v1, 0x41f00000    # 30.0f

    .line 3010
    invoke-static {v0, v1, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    float-to-int p4, p4

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2016
    invoke-direct/range {v0 .. v5}, Lo/setReenterTransition$onPostMessage;->onPostMessage(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;)V

    return-void
.end method

.method private onPostMessage(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1018
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1019
    sget v1, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1020
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x37

    const/4 v3, 0x0

    .line 1021
    invoke-virtual {v1, v2, v3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 1022
    invoke-virtual {v1, p3}, Landroid/widget/Toast;->setDuration(I)V

    const-string p3, "layout.tvToast"

    const-string p4, "layout"

    if-eqz p5, :cond_1

    .line 1023
    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p5

    .line 1024
    invoke-static {v0, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/preferLastSpan$ICustomTabsCallback;->tvToast:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p5}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v2, p1}, Lo/createFullSpanItemFromEnd;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1027
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1028
    invoke-static {v0, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lo/preferLastSpan$ICustomTabsCallback;->tvToast:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1030
    iput-object v1, p0, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady:Landroid/widget/Toast;

    return-void
.end method
