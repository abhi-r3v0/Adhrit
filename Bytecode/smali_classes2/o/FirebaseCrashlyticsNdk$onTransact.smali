.class public final Lo/FirebaseCrashlyticsNdk$onTransact;
.super Lo/FirebaseCrashlyticsNdk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onTransact"
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "[I>;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback;

.field private asBinder:Z

.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Lo/FirebaseCrashlyticsNdk$asBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 328
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 329
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v5, 0x5

    .line 330
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v2, v8

    .line 328
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lo/FirebaseCrashlyticsNdk$onTransact;->onNavigationEvent:Ljava/util/Set;

    .line 332
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v5, [Ljava/lang/Integer;

    .line 333
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/16 v3, 0x8

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 332
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lo/FirebaseCrashlyticsNdk$onTransact;->onMessageChannelReady:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$asBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;",
            "Ljava/util/List<",
            "Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;",
            ">;",
            "Ljava/lang/String;",
            "Lo/FirebaseCrashlyticsNdk$asBinder;",
            ")V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1}, Lo/FirebaseCrashlyticsNdk;-><init>(Ljava/util/List;)V

    .line 197
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->ICustomTabsCallback:Ljava/util/WeakHashMap;

    .line 198
    iput-object p2, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->extraCallback:Ljava/util/List;

    .line 199
    iput-object p3, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->onPostMessage:Ljava/lang/String;

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->asBinder:Z

    .line 201
    iput-object p4, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->onRelationshipValidationResult:Lo/FirebaseCrashlyticsNdk$asBinder;

    .line 202
    new-instance p1, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback;-><init>(B)V

    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->ICustomTabsCallback$Stub:Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback;

    return-void
.end method

.method private onNavigationEvent(Ljava/util/Set;Landroid/util/SparseArray;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lo/FirebaseCrashlyticsNdk$onTransact$2;

    invoke-direct {v1}, Lo/FirebaseCrashlyticsNdk$onTransact$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 303
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 305
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 306
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 307
    invoke-virtual {v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    .line 309
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 311
    aget v7, v4, v7

    if-lez v7, :cond_0

    .line 312
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 313
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {v0, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_2
    iget-object p1, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->ICustomTabsCallback$Stub:Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback;->onMessageChannelReady(Ljava/util/TreeMap;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;)V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->asBinder:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lo/FirebaseCrashlyticsNdk$onTransact;->onNavigationEvent()Lo/getFilesForSession;

    move-result-object v0

    invoke-virtual {p0}, Lo/FirebaseCrashlyticsNdk$onTransact;->onMessageChannelReady()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lo/getFilesForSession;->onPostMessage(Landroid/view/View;Ljava/util/List;Lo/getFilesForSession$ICustomTabsCallback;)V

    :cond_0
    return-void
.end method

.method public final extraCallback()V
    .locals 6

    .line 208
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->ICustomTabsCallback:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 211
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 212
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 213
    aget v5, v1, v2

    invoke-virtual {v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 217
    :cond_1
    iput-boolean v2, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->asBinder:Z

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)V
    .locals 8

    .line 233
    check-cast p1, Landroid/view/ViewGroup;

    .line 234
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 236
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 238
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    if-lez v5, :cond_0

    .line 241
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_1
    iget-object p1, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->extraCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_7

    .line 247
    iget-object v1, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;

    .line 248
    iget v3, v1, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->onPostMessage:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    .line 253
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 254
    invoke-virtual {v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v5

    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 256
    iget v6, v1, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    aget v6, v5, v6

    iget v7, v1, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->extraCallback:I

    if-eq v6, v7, :cond_6

    .line 260
    iget-object v6, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->ICustomTabsCallback:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 263
    iget-object v6, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->ICustomTabsCallback:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_2
    iget v5, v1, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    iget v6, v1, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->extraCallback:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 269
    sget-object v5, Lo/FirebaseCrashlyticsNdk$onTransact;->onNavigationEvent:Ljava/util/Set;

    iget v6, v1, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    sget-object v1, Lo/FirebaseCrashlyticsNdk$onTransact;->onNavigationEvent:Ljava/util/Set;

    goto :goto_2

    .line 271
    :cond_3
    sget-object v5, Lo/FirebaseCrashlyticsNdk$onTransact;->onMessageChannelReady:Ljava/util/Set;

    iget v1, v1, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    sget-object v1, Lo/FirebaseCrashlyticsNdk$onTransact;->onMessageChannelReady:Ljava/util/Set;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 277
    invoke-direct {p0, v1, v0}, Lo/FirebaseCrashlyticsNdk$onTransact;->onNavigationEvent(Ljava/util/Set;Landroid/util/SparseArray;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 278
    invoke-virtual {p0}, Lo/FirebaseCrashlyticsNdk$onTransact;->extraCallback()V

    .line 279
    iget-object p1, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->onRelationshipValidationResult:Lo/FirebaseCrashlyticsNdk$asBinder;

    new-instance v0, Lo/FirebaseCrashlyticsNdk$onNavigationEvent;

    iget-object v1, p0, Lo/FirebaseCrashlyticsNdk$onTransact;->onPostMessage:Ljava/lang/String;

    const-string v2, "circular_dependency"

    invoke-direct {v0, v2, v1}, Lo/FirebaseCrashlyticsNdk$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/FirebaseCrashlyticsNdk$asBinder;->onNavigationEvent(Lo/FirebaseCrashlyticsNdk$onNavigationEvent;)V

    return-void

    .line 283
    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method
