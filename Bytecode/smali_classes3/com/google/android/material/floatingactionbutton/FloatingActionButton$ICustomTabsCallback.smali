.class final Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTenantId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 1450
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 1

    .line 1473
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onPostMessage:Z

    return v0
.end method

.method public final onNavigationEvent(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->extraCallback(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(IIII)V
    .locals 2

    .line 1459
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1460
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2102
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onMessageChannelReady:I

    add-int/2addr p1, v1

    .line 1461
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3102
    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onMessageChannelReady:I

    add-int/2addr p2, v1

    .line 1461
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4102
    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onMessageChannelReady:I

    add-int/2addr p3, v1

    .line 1461
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 5102
    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onMessageChannelReady:I

    add-int/2addr p4, v1

    .line 1460
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
