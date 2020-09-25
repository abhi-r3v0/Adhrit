.class final Lo/onIdTokenChanged$2;
.super Lo/onIdTokenChanged$asBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onIdTokenChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Landroid/graphics/Matrix;

.field private synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lo/onIdTokenChanged$2;->onPostMessage:Ljava/util/List;

    iput-object p2, p0, Lo/onIdTokenChanged$2;->extraCallback:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lo/onIdTokenChanged$asBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Matrix;Lo/applyActionCode;ILandroid/graphics/Canvas;)V
    .locals 2

    .line 225
    iget-object p1, p0, Lo/onIdTokenChanged$2;->onPostMessage:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onIdTokenChanged$asBinder;

    .line 226
    iget-object v1, p0, Lo/onIdTokenChanged$2;->extraCallback:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3, p4}, Lo/onIdTokenChanged$asBinder;->ICustomTabsCallback(Landroid/graphics/Matrix;Lo/applyActionCode;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
