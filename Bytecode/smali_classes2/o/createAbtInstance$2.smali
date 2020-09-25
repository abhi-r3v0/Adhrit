.class final Lo/createAbtInstance$2;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/createAbtInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/createAbtInstance;


# direct methods
.method constructor <init>(Lo/createAbtInstance;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lo/createAbtInstance$2;->ICustomTabsCallback:Lo/createAbtInstance;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 297
    iget-object p1, p0, Lo/createAbtInstance$2;->ICustomTabsCallback:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method
