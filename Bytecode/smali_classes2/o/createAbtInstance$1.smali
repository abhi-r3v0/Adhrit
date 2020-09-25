.class final Lo/createAbtInstance$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createAbtInstance;->onPostMessage(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/createAbtInstance;


# direct methods
.method constructor <init>(Lo/createAbtInstance;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lo/createAbtInstance$1;->onMessageChannelReady:Lo/createAbtInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 219
    iget-object p1, p0, Lo/createAbtInstance$1;->onMessageChannelReady:Lo/createAbtInstance;

    iget-boolean p1, p1, Lo/createAbtInstance;->asInterface:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/createAbtInstance$1;->onMessageChannelReady:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/createAbtInstance$1;->onMessageChannelReady:Lo/createAbtInstance;

    .line 1261
    iget-boolean v0, p1, Lo/createAbtInstance;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    .line 1263
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101035b

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1264
    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1265
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p1, Lo/createAbtInstance;->asBinder:Z

    .line 1266
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1267
    iput-boolean v1, p1, Lo/createAbtInstance;->ICustomTabsCallback$Stub:Z

    .line 1269
    :cond_0
    iget-boolean p1, p1, Lo/createAbtInstance;->asBinder:Z

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lo/createAbtInstance$1;->onMessageChannelReady:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_1
    return-void
.end method
