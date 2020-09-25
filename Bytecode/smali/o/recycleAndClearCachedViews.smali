.class public final Lo/recycleAndClearCachedViews;
.super Lo/getQueryDefinition$ICustomTabsCallback;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002\u00a2\u0006\u0002\u0010\u000cJ\u001d\u0010\r\u001a\u0004\u0018\u00010\u000e2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0002\u0010\u000fJ3\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0002\u0010\u0014J\u001b\u0010\u0015\u001a\u00020\u000e2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0002\u0010\u000fJ\u001b\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0002\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/AdapterFactory;",
        "Lretrofit2/CallAdapter$Factory;",
        "()V",
        "get",
        "Lretrofit2/CallAdapter;",
        "returnType",
        "Ljava/lang/reflect/Type;",
        "annotations",
        "",
        "",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;",
        "getCacheKey",
        "",
        "([Ljava/lang/annotation/Annotation;)Ljava/lang/String;",
        "getErrorConverter",
        "Lcom/dreamplug/network/internals/ErrorConverter;",
        "",
        "errorType",
        "(Ljava/lang/reflect/Type;Lretrofit2/Retrofit;[Ljava/lang/annotation/Annotation;)Lcom/dreamplug/network/internals/ErrorConverter;",
        "getSerializerType",
        "isAuthorization",
        "",
        "([Ljava/lang/annotation/Annotation;)Z",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/getQueryDefinition$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback([Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 4

    .line 110
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 111
    instance-of v3, v2, Lo/updateViewCacheSize;

    if-eqz v3, :cond_0

    .line 112
    check-cast v2, Lo/updateViewCacheSize;

    invoke-interface {v2}, Lo/updateViewCacheSize;->extraCallback()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extraCallback([Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 3

    .line 119
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 120
    instance-of v2, v2, Lo/getChangedScrapViewForPosition;

    if-eqz v2, :cond_0

    .line 121
    sget-object p0, Lo/getScrapViewAt;->ICustomTabsCallback:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    sget-object p0, Lo/getScrapViewAt;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method

.method private static onNavigationEvent([Ljava/lang/annotation/Annotation;)Z
    .locals 4

    .line 101
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 102
    instance-of v3, v3, Lo/setViewCacheSize;

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/getQueryDefinition;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/getQueryDefinition<",
            "**>;"
        }
    .end annotation

    const-string/jumbo v0, "returnType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "retrofit"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    invoke-static {p1}, Lo/nameAndPriorityCompare;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    const-class v1, Lo/tryBindViewHolderByDeadline;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "respType"

    const/4 v3, 0x0

    const-string v4, "errorType"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 28
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 2076
    invoke-static {v6, p1}, Lo/nameAndPriorityCompare;->onNavigationEvent(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3076
    invoke-static {v5, p1}, Lo/nameAndPriorityCompare;->onNavigationEvent(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 37
    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3093
    const-class v1, Ljava/lang/Void;

    if-eq p1, v1, :cond_0

    .line 3094
    new-instance v3, Lo/quickRecycleScrapView;

    invoke-direct {v3, p1, p3, p2}, Lo/quickRecycleScrapView;-><init>(Ljava/lang/reflect/Type;Lo/NodeFromJSON;[Ljava/lang/annotation/Annotation;)V

    .line 38
    :cond_0
    new-instance p1, Lo/unscrapView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, v3}, Lo/unscrapView;-><init>(Ljava/lang/reflect/Type;Lo/quickRecycleScrapView;)V

    check-cast p1, Lo/attachAccessibilityDelegateOnBind;

    goto/16 :goto_0

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "NetworkCall must be parameterized as NetworkCall<Foo,Bar>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 40
    :cond_2
    const-class v1, Landroidx/lifecycle/LiveData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    const-string v1, "LiveData must be parameterized as LiveData<Response<E,R>>"

    if-eqz v0, :cond_6

    .line 45
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 4076
    invoke-static {v6, p1}, Lo/nameAndPriorityCompare;->onNavigationEvent(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 5084
    invoke-static {p1}, Lo/nameAndPriorityCompare;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    const-class v7, Lo/getViewForPosition;

    invoke-static {v0, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    .line 52
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 6076
    invoke-static {v6, p1}, Lo/nameAndPriorityCompare;->onNavigationEvent(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 7076
    invoke-static {v5, p1}, Lo/nameAndPriorityCompare;->onNavigationEvent(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 55
    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7093
    const-class v1, Ljava/lang/Void;

    if-eq p1, v1, :cond_3

    .line 7094
    new-instance v3, Lo/quickRecycleScrapView;

    invoke-direct {v3, p1, p3, p2}, Lo/quickRecycleScrapView;-><init>(Ljava/lang/reflect/Type;Lo/NodeFromJSON;[Ljava/lang/annotation/Annotation;)V

    .line 56
    :cond_3
    new-instance p1, Lo/recycleCachedViewAt;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, v3}, Lo/recycleCachedViewAt;-><init>(Ljava/lang/reflect/Type;Lo/quickRecycleScrapView;)V

    .line 47
    check-cast p1, Lo/attachAccessibilityDelegateOnBind;

    goto :goto_0

    .line 49
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Response must be parameterized as Response<Foo,Bar>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 42
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 61
    :cond_7
    const-class v1, Lo/clearScrap;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 62
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_c

    .line 66
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 8076
    invoke-static {v6, p1}, Lo/nameAndPriorityCompare;->onNavigationEvent(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 9076
    invoke-static {v5, p1}, Lo/nameAndPriorityCompare;->onNavigationEvent(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 68
    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9093
    const-class v1, Ljava/lang/Void;

    if-eq p1, v1, :cond_8

    .line 9094
    new-instance v3, Lo/quickRecycleScrapView;

    invoke-direct {v3, p1, p3, p2}, Lo/quickRecycleScrapView;-><init>(Ljava/lang/reflect/Type;Lo/NodeFromJSON;[Ljava/lang/annotation/Annotation;)V

    .line 69
    :cond_8
    new-instance p1, Lo/RecyclerView$RecyclerListener;

    const-string/jumbo p3, "responseType"

    invoke-static {v0, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, v3}, Lo/RecyclerView$RecyclerListener;-><init>(Ljava/lang/reflect/Type;Lo/quickRecycleScrapView;)V

    check-cast p1, Lo/attachAccessibilityDelegateOnBind;

    .line 78
    :goto_0
    invoke-static {p2}, Lo/recycleAndClearCachedViews;->ICustomTabsCallback([Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p3

    .line 79
    invoke-static {p2}, Lo/recycleAndClearCachedViews;->extraCallback([Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v0

    .line 80
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    :cond_a
    :goto_1
    if-nez v5, :cond_b

    .line 81
    sget-object v1, Lo/recycleView;->onMessageChannelReady:Lo/recycleView;

    invoke-static {p3}, Lo/recycleView;->extraCallback(Ljava/lang/String;)V

    .line 82
    invoke-interface {p1, p3}, Lo/attachAccessibilityDelegateOnBind;->onPostMessage(Ljava/lang/String;)V

    .line 84
    :cond_b
    invoke-interface {p1, v0}, Lo/attachAccessibilityDelegateOnBind;->onMessageChannelReady(Ljava/lang/String;)V

    .line 85
    invoke-static {p2}, Lo/recycleAndClearCachedViews;->onNavigationEvent([Ljava/lang/annotation/Annotation;)Z

    move-result p2

    invoke-interface {p1, p2}, Lo/attachAccessibilityDelegateOnBind;->extraCallback(Z)V

    .line 87
    check-cast p1, Lo/getQueryDefinition;

    return-object p1

    .line 63
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "LiveData must be parameterized as CallRequest<R,E>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 72
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown type -> "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ". Add a new case if writing a new type"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
