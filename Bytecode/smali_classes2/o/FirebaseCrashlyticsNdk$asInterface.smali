.class public final Lo/FirebaseCrashlyticsNdk$asInterface;
.super Lo/FirebaseCrashlyticsNdk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "asInterface"
.end annotation


# instance fields
.field private final extraCallback:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/moveRedLeft$3;

.field private final onNavigationEvent:[Ljava/lang/Object;

.field private final onPostMessage:Lo/moveRedLeft$3;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/moveRedLeft$3;Lo/moveRedLeft$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;",
            "Lo/moveRedLeft$3;",
            "Lo/moveRedLeft$3;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lo/FirebaseCrashlyticsNdk;-><init>(Ljava/util/List;)V

    .line 72
    iput-object p2, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onMessageChannelReady:Lo/moveRedLeft$3;

    .line 73
    iput-object p3, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onPostMessage:Lo/moveRedLeft$3;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onNavigationEvent:[Ljava/lang/Object;

    .line 75
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->extraCallback:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lo/FirebaseCrashlyticsNdk;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 5

    .line 80
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->extraCallback:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v3, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onNavigationEvent:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 85
    iget-object v1, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onMessageChannelReady:Lo/moveRedLeft$3;

    invoke-virtual {v1, v2, v3}, Lo/moveRedLeft$3;->ICustomTabsCallback(Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)V
    .locals 8

    .line 92
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onPostMessage:Lo/moveRedLeft$3;

    if-eqz v0, :cond_a

    .line 93
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onMessageChannelReady:Lo/moveRedLeft$3;

    .line 1034
    iget-object v0, v0, Lo/moveRedLeft$3;->onPostMessage:[Ljava/lang/Object;

    .line 94
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v2, v1, :cond_a

    const/4 v1, 0x0

    .line 95
    aget-object v0, v0, v1

    .line 96
    iget-object v3, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onPostMessage:Lo/moveRedLeft$3;

    .line 1038
    iget-object v4, v3, Lo/moveRedLeft$3;->onPostMessage:[Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Lo/moveRedLeft$3;->ICustomTabsCallback(Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_3

    .line 103
    instance-of v4, v0, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    instance-of v4, v3, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 104
    check-cast v0, Landroid/graphics/Bitmap;

    .line 105
    move-object v4, v3

    check-cast v4, Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 109
    :cond_1
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 110
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 115
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 120
    :cond_3
    instance-of v0, v3, Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    instance-of v0, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_a

    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->extraCallback:Ljava/util/WeakHashMap;

    .line 122
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 125
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onNavigationEvent:[Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 126
    iget-object v4, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onMessageChannelReady:Lo/moveRedLeft$3;

    .line 1059
    iget-object v4, v4, Lo/moveRedLeft$3;->extraCallback:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1060
    array-length v5, v0

    array-length v6, v4

    if-eq v5, v6, :cond_5

    :cond_4
    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 1064
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_8

    .line 1065
    aget-object v6, v4, v5

    invoke-static {v6}, Lo/moveRedLeft$3;->onMessageChannelReady(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 1066
    aget-object v7, v0, v5

    if-nez v7, :cond_6

    .line 1067
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_7

    goto :goto_0

    .line 1078
    :cond_6
    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lo/moveRedLeft$3;->onMessageChannelReady(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    .line 1079
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 127
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->extraCallback:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 129
    :cond_9
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->extraCallback:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_a
    :goto_3
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$asInterface;->onMessageChannelReady:Lo/moveRedLeft$3;

    .line 2038
    iget-object v1, v0, Lo/moveRedLeft$3;->onPostMessage:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/moveRedLeft$3;->ICustomTabsCallback(Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
