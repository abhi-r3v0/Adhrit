.class public Lo/createAbtInstance;
.super Lo/warmup;
.source ""


# instance fields
.field ICustomTabsCallback$Stub:Z

.field asBinder:Z

.field asInterface:Z

.field private onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

.field private onPostMessage:Landroid/widget/FrameLayout;

.field public onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lo/createAbtInstance;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1275
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 1276
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lo/toStringMap$extraCallback;->bottomSheetDialogTheme:I

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    .line 1280
    :cond_0
    sget p2, Lo/toStringMap$onRelationshipValidationResult;->Theme_Design_Light_BottomSheetDialog:I

    .line 60
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lo/warmup;-><init>(Landroid/content/Context;I)V

    .line 51
    iput-boolean v0, p0, Lo/createAbtInstance;->asInterface:Z

    .line 52
    iput-boolean v0, p0, Lo/createAbtInstance;->asBinder:Z

    .line 290
    new-instance p1, Lo/createAbtInstance$2;

    invoke-direct {p1, p0}, Lo/createAbtInstance$2;-><init>(Lo/createAbtInstance;)V

    iput-object p1, p0, Lo/createAbtInstance;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    .line 63
    invoke-virtual {p0, v0}, Lo/warmup;->onPostMessage(I)Z

    return-void
.end method

.method private onPostMessage(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 2

    .line 200
    invoke-virtual {p0}, Lo/createAbtInstance;->ICustomTabsCallback()Landroid/widget/FrameLayout;

    .line 201
    iget-object v0, p0, Lo/createAbtInstance;->onPostMessage:Landroid/widget/FrameLayout;

    sget v1, Lo/toStringMap$asInterface;->coordinator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 206
    :cond_0
    iget-object p1, p0, Lo/createAbtInstance;->onPostMessage:Landroid/widget/FrameLayout;

    sget v1, Lo/toStringMap$asInterface;->design_bottom_sheet:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-nez p3, :cond_1

    .line 208
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :goto_0
    sget p2, Lo/toStringMap$asInterface;->touch_outside:I

    .line 214
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lo/createAbtInstance$1;

    invoke-direct {p3, p0}, Lo/createAbtInstance$1;-><init>(Lo/createAbtInstance;)V

    .line 215
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    new-instance p2, Lo/createAbtInstance$4;

    invoke-direct {p2, p0}, Lo/createAbtInstance$4;-><init>(Lo/createAbtInstance;)V

    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    .line 249
    new-instance p2, Lo/createAbtInstance$5;

    invoke-direct {p2}, Lo/createAbtInstance$5;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    iget-object p1, p0, Lo/createAbtInstance;->onPostMessage:Landroid/widget/FrameLayout;

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/widget/FrameLayout;
    .locals 3

    .line 186
    iget-object v0, p0, Lo/createAbtInstance;->onPostMessage:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/toStringMap$asBinder;->design_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lo/createAbtInstance;->onPostMessage:Landroid/widget/FrameLayout;

    .line 190
    sget v1, Lo/toStringMap$asInterface;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 191
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 192
    iget-object v1, p0, Lo/createAbtInstance;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    .line 2903
    iget-object v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2904
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    iget-object v0, p0, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p0, Lo/createAbtInstance;->asInterface:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 195
    :cond_1
    iget-object v0, p0, Lo/createAbtInstance;->onPostMessage:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 2159
    iget-object v0, p0, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    .line 2161
    invoke-virtual {p0}, Lo/createAbtInstance;->ICustomTabsCallback()Landroid/widget/FrameLayout;

    .line 141
    :cond_0
    invoke-super {p0}, Lo/warmup;->cancel()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lo/warmup;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    const/4 v0, -0x1

    .line 87
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 114
    invoke-super {p0}, Lo/warmup;->onStart()V

    .line 115
    iget-object v0, p0, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 1970
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lo/warmup;->setCancelable(Z)V

    .line 104
    iget-boolean v0, p0, Lo/createAbtInstance;->asInterface:Z

    if-eq v0, p1, :cond_0

    .line 105
    iput-boolean p1, p0, Lo/createAbtInstance;->asInterface:Z

    .line 106
    iget-object v0, p0, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Lo/warmup;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 150
    iget-boolean v1, p0, Lo/createAbtInstance;->asInterface:Z

    if-nez v1, :cond_0

    .line 151
    iput-boolean v0, p0, Lo/createAbtInstance;->asInterface:Z

    .line 153
    :cond_0
    iput-boolean p1, p0, Lo/createAbtInstance;->asBinder:Z

    .line 154
    iput-boolean v0, p0, Lo/createAbtInstance;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v0}, Lo/createAbtInstance;->onPostMessage(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Lo/warmup;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, v0, p1, v1}, Lo/createAbtInstance;->onPostMessage(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Lo/warmup;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0, p1, p2}, Lo/createAbtInstance;->onPostMessage(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Lo/warmup;->setContentView(Landroid/view/View;)V

    return-void
.end method
