.class final Lo/NativeComponentController$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JniNativeApi$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NativeComponentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/util/Set;Lo/sessionFile;)Lo/JniNativeApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lo/sessionFile;",
            ")",
            "Lo/JniNativeApi<",
            "*>;"
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lo/serializeSessionOs;->ICustomTabsCallback(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    .line 35
    :cond_0
    const-class p2, Ljava/util/List;

    if-eq v0, p2, :cond_3

    const-class p2, Ljava/util/Collection;

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    const-class p2, Ljava/util/Set;

    if-ne v0, p2, :cond_2

    .line 38
    invoke-static {p1, p3}, Lo/NativeComponentController;->onNavigationEvent(Ljava/lang/reflect/Type;Lo/sessionFile;)Lo/JniNativeApi;

    move-result-object p1

    .line 2136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    :cond_2
    return-object v1

    .line 36
    :cond_3
    :goto_0
    invoke-static {p1, p3}, Lo/NativeComponentController;->onPostMessage(Ljava/lang/reflect/Type;Lo/sessionFile;)Lo/JniNativeApi;

    move-result-object p1

    .line 1136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2
.end method
