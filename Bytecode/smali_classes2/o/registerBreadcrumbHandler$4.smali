.class final Lo/registerBreadcrumbHandler$4;
.super Lo/DisabledBreadcrumbSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/registerBreadcrumbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/DisabledBreadcrumbSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private extraCallback:Z

.field private synthetic onNavigationEvent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lo/registerBreadcrumbHandler$4;->onNavigationEvent:Ljava/lang/Object;

    invoke-direct {p0}, Lo/DisabledBreadcrumbSource;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1061
    iget-boolean v0, p0, Lo/registerBreadcrumbHandler$4;->extraCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1066
    iget-boolean v0, p0, Lo/registerBreadcrumbHandler$4;->extraCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1069
    iput-boolean v0, p0, Lo/registerBreadcrumbHandler$4;->extraCallback:Z

    .line 1070
    iget-object v0, p0, Lo/registerBreadcrumbHandler$4;->onNavigationEvent:Ljava/lang/Object;

    return-object v0

    .line 1067
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
