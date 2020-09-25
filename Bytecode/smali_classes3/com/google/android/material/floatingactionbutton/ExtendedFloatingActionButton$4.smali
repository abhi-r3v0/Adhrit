.class final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()I
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2637
    invoke-static {v0}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub$Proxy(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    .line 3541
    iget v0, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final onPostMessage()I
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1637
    invoke-static {v0}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub$Proxy(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    .line 2541
    iget v0, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->onMessageChannelReady:I

    add-int/2addr v1, v0

    return v1
.end method
