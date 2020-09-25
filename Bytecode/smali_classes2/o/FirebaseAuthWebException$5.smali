.class final Lo/FirebaseAuthWebException$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FirebaseAuthWebException;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/FirebaseAuthWebException;


# direct methods
.method constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 0

    .line 2077
    iput-object p1, p0, Lo/FirebaseAuthWebException$5;->ICustomTabsCallback:Lo/FirebaseAuthWebException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2080
    iget-object v0, p0, Lo/FirebaseAuthWebException$5;->ICustomTabsCallback:Lo/FirebaseAuthWebException;

    .line 2172
    iget-object v0, v0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    .line 2080
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2082
    iget-object v0, p0, Lo/FirebaseAuthWebException$5;->ICustomTabsCallback:Lo/FirebaseAuthWebException;

    .line 3172
    iget-object v0, v0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    .line 2082
    invoke-virtual {v0}, Lo/addIdTokenListener;->jumpDrawablesToCurrentState()V

    return-void
.end method
