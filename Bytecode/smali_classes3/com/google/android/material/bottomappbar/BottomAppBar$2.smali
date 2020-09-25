.class final Lcom/google/android/material/bottomappbar/BottomAppBar$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/signInAnonymously$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->extraCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;Lo/getVolumeAttributes;Lo/signInAnonymously$extraCallback;)Lo/getVolumeAttributes;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->extraCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Lo/getVolumeAttributes;->onNavigationEvent()I

    move-result v1

    .line 1109
    iput v1, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->asBinder:I

    .line 269
    iget v0, p3, Lo/signInAnonymously$extraCallback;->onPostMessage:I

    invoke-virtual {p2}, Lo/getVolumeAttributes;->onNavigationEvent()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lo/signInAnonymously$extraCallback;->onPostMessage:I

    .line 1129
    iget v0, p3, Lo/signInAnonymously$extraCallback;->ICustomTabsCallback:I

    iget v1, p3, Lo/signInAnonymously$extraCallback;->extraCallback:I

    iget v2, p3, Lo/signInAnonymously$extraCallback;->onMessageChannelReady:I

    iget p3, p3, Lo/signInAnonymously$extraCallback;->onPostMessage:I

    invoke-static {p1, v0, v1, v2, p3}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;IIII)V

    return-object p2
.end method
