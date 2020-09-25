.class final Lo/FirebaseAuthWebException$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FirebaseAuthWebException;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/FirebaseAuthWebException;


# direct methods
.method constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 0

    .line 2149
    iput-object p1, p0, Lo/FirebaseAuthWebException$1;->onNavigationEvent:Lo/FirebaseAuthWebException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2152
    iget-object v0, p0, Lo/FirebaseAuthWebException$1;->onNavigationEvent:Lo/FirebaseAuthWebException;

    iget-object v0, v0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
