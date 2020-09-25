.class final Lo/translate$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/translate;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lo/translate$extraCallback;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/translate$extraCallback;


# direct methods
.method constructor <init>(Lo/translate$extraCallback;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lo/translate$2;->extraCallback:Lo/translate$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lo/translate$2;->extraCallback:Lo/translate$extraCallback;

    invoke-interface {v0, p1}, Lo/translate$extraCallback;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lo/translate$2;->extraCallback:Lo/translate$extraCallback;

    invoke-interface {v1, p2}, Lo/translate$extraCallback;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
