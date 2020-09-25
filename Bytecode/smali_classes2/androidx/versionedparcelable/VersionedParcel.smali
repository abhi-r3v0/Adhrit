.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcel$ParcelException;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/postOrRun;Lo/postOrRun;Lo/postOrRun;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage:Lo/postOrRun;

    .line 88
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback:Lo/postOrRun;

    .line 89
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady:Lo/postOrRun;

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1616
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback:Lo/postOrRun;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 1618
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 1620
    const-class v3, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v3, v1, v2

    const-string v2, "write"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1621
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback:Lo/postOrRun;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private ICustomTabsCallback(Lo/setTextDelegate$onMessageChannelReady;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/setTextDelegate$onMessageChannelReady;",
            ">(TT;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")V"
        }
    .end annotation

    .line 1586
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 1587
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1598
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1596
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 1591
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_0

    .line 1592
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 1594
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 1589
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lo/setTextDelegate$onMessageChannelReady;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1628
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 1630
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 1631
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "%s.%sParcelizer"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1632
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1633
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private onNavigationEvent(Lo/setTextDelegate$onMessageChannelReady;)V
    .locals 3

    .line 1042
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 1044
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have a Parcelizer"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onPostMessage(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Lo/setTextDelegate$onMessageChannelReady;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/setTextDelegate$onMessageChannelReady;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")TT;"
        }
    .end annotation

    .line 2604
    const-class v0, Landroidx/versionedparcelable/VersionedParcel;

    :try_start_0
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage:Lo/postOrRun;

    invoke-virtual {v1, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 2607
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "read"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v0, v5, v2

    .line 2608
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2609
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage:Lo/postOrRun;

    invoke-virtual {v0, p1, v1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 1566
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setTextDelegate$onMessageChannelReady;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1577
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1575
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 1570
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_1

    .line 1571
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 1573
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 1568
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method protected abstract ICustomTabsCallback()I
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    .line 451
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 454
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract ICustomTabsCallback(Landroid/os/Parcelable;)V
.end method

.method public final ICustomTabsCallback(Landroid/os/Parcelable;I)V
    .locals 0

    .line 391
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady(I)V

    .line 392
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setTextDelegate$onMessageChannelReady;)V
    .locals 1

    const/4 v0, 0x1

    .line 1021
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2029
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 2032
    :cond_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(Lo/setTextDelegate$onMessageChannelReady;)V

    .line 2034
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->extraCallback()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    .line 2035
    invoke-direct {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(Lo/setTextDelegate$onMessageChannelReady;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 2036
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent()V

    return-void
.end method

.method protected abstract ICustomTabsCallback(I)Z
.end method

.method protected final ICustomTabsCallback$Stub()Lo/setTextDelegate$onMessageChannelReady;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/setTextDelegate$onMessageChannelReady;",
            ">()TT;"
        }
    .end annotation

    .line 1509
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1513
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->extraCallback()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Lo/setTextDelegate$onMessageChannelReady;

    move-result-object v0

    return-object v0
.end method

.method protected abstract asBinder()Z
.end method

.method protected abstract extraCallback()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method protected abstract extraCallback(I)V
.end method

.method protected abstract extraCallback(Z)V
.end method

.method public final extraCallback([B)V
    .locals 1

    const/4 v0, 0x2

    .line 304
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady(I)V

    .line 305
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage([B)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0

    .line 616
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 619
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->onTransact()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onMessageChannelReady()Ljava/lang/String;
.end method

.method protected abstract onMessageChannelReady(I)V
.end method

.method public final onMessageChannelReady(II)V
    .locals 0

    .line 334
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady(I)V

    .line 335
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->extraCallback(I)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    .line 370
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady(I)V

    .line 371
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected final onMessageChannelReady(Lo/setTextDelegate$onMessageChannelReady;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1029
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 1032
    :cond_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(Lo/setTextDelegate$onMessageChannelReady;)V

    .line 1034
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->extraCallback()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    .line 1035
    invoke-direct {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(Lo/setTextDelegate$onMessageChannelReady;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 1036
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent()V

    return-void
.end method

.method public final onNavigationEvent(II)I
    .locals 0

    .line 409
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(I)Z

    move-result p2

    if-nez p2, :cond_0

    return p1

    .line 412
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback()I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 481
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->onRelationshipValidationResult()Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onNavigationEvent()V
.end method

.method protected abstract onNavigationEvent(Ljava/lang/String;)V
.end method

.method public final onNavigationEvent(ZI)Z
    .locals 0

    .line 399
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(I)Z

    move-result p2

    if-nez p2, :cond_0

    return p1

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->asBinder()Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent([B)[B
    .locals 1

    const/4 v0, 0x2

    .line 472
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 475
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage()[B

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/setTextDelegate$onMessageChannelReady;)Lo/setTextDelegate$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/setTextDelegate$onMessageChannelReady;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1493
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2509
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2513
    :cond_1
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->extraCallback()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Lo/setTextDelegate$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onPostMessage(Ljava/lang/CharSequence;)V
.end method

.method public final onPostMessage(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 325
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady(I)V

    .line 326
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPostMessage(ZI)V
    .locals 0

    .line 294
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady(I)V

    .line 295
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->extraCallback(Z)V

    return-void
.end method

.method protected abstract onPostMessage([B)V
.end method

.method protected abstract onPostMessage()[B
.end method

.method protected abstract onRelationshipValidationResult()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method protected abstract onTransact()Ljava/lang/CharSequence;
.end method
