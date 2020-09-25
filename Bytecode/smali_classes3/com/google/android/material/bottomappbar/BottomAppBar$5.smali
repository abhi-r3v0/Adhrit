.class final Lcom/google/android/material/bottomappbar/BottomAppBar$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/validateRunningExperiments;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/validateRunningExperiments<",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Landroid/view/View;)V
    .locals 2

    .line 186
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3195
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getTranslationX()F

    move-result v0

    .line 3196
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 4776
    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 5255
    iget-object v1, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 5712
    iget-object v1, v1, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 4777
    check-cast v1, Lo/convertMapsToExperimentInfos;

    .line 6183
    iget v1, v1, Lo/convertMapsToExperimentInfos;->onPostMessage:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 3197
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 7776
    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 8255
    iget-object v1, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 8712
    iget-object v1, v1, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 7777
    check-cast v1, Lo/convertMapsToExperimentInfos;

    .line 9173
    iput v0, v1, Lo/convertMapsToExperimentInfos;->onPostMessage:F

    .line 3198
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 10109
    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 3198
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 3200
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    .line 3201
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 11776
    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 12255
    iget-object v1, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 12712
    iget-object v1, v1, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 11777
    check-cast v1, Lo/convertMapsToExperimentInfos;

    .line 13192
    iget v1, v1, Lo/convertMapsToExperimentInfos;->onMessageChannelReady:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 3202
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 14776
    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 15255
    iget-object v1, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 15712
    iget-object v1, v1, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 14777
    check-cast v1, Lo/convertMapsToExperimentInfos;

    .line 16201
    iput v0, v1, Lo/convertMapsToExperimentInfos;->onMessageChannelReady:F

    .line 3203
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 17109
    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 3203
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 3205
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 18109
    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 3206
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleY()F

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 18616
    :goto_0
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_3

    .line 18617
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    const/4 p1, 0x1

    .line 18618
    iput-boolean p1, v0, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 18619
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    return-void
.end method

.method public final synthetic onPostMessage(Landroid/view/View;)V
    .locals 2

    .line 186
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1189
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 2109
    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 1190
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleY()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2616
    :goto_0
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 2617
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    const/4 p1, 0x1

    .line 2618
    iput-boolean p1, v0, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 2619
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method
