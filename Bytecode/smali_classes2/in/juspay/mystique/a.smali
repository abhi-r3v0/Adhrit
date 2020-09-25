.class public Lin/juspay/mystique/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/mystique/a$b;,
        Lin/juspay/mystique/a$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Lin/juspay/mystique/DynamicUI;

.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lin/juspay/mystique/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lin/juspay/mystique/a$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/juspay/mystique/DynamicUI;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lin/juspay/mystique/a;->a:F

    .line 3
    iput-object p1, p0, Lin/juspay/mystique/a;->b:Lin/juspay/mystique/DynamicUI;

    .line 4
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lin/juspay/mystique/a;->d:Ljava/util/WeakHashMap;

    .line 5
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lin/juspay/mystique/a;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic a(Lin/juspay/mystique/a;Lorg/json/JSONObject;Ljava/lang/String;FF)F
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lin/juspay/mystique/a;->a(Lorg/json/JSONObject;Ljava/lang/String;FF)F

    move-result p0

    return p0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;FF)F
    .locals 2

    float-to-double v0, p4

    .line 8
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    mul-double v0, v0, p1

    double-to-float p1, v0

    return p1

    :catch_0
    return p3
.end method

.method static synthetic a(Lin/juspay/mystique/a;)Lin/juspay/mystique/DynamicUI;
    .locals 0

    .line 3
    iget-object p0, p0, Lin/juspay/mystique/a;->b:Lin/juspay/mystique/DynamicUI;

    return-object p0
.end method

.method static synthetic a(Lin/juspay/mystique/a;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lin/juspay/mystique/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p3
.end method

.method static synthetic a(Lin/juspay/mystique/a;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lin/juspay/mystique/a;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 0

    .line 14
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    .locals 6

    .line 20
    iget-object v0, p0, Lin/juspay/mystique/a;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iget-object v1, p0, Lin/juspay/mystique/a;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 27
    invoke-direct {p0, p2, v2}, Lin/juspay/mystique/a;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "name"

    const-string v5, ""

    .line 31
    invoke-direct {p0, v3, v4, v5}, Lin/juspay/mystique/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 33
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin/juspay/mystique/a$b;

    invoke-virtual {v5, v3, p3}, Lin/juspay/mystique/a$b;->a(Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 35
    :cond_1
    new-instance v5, Lin/juspay/mystique/a$b;

    invoke-direct {v5, p0, v3, p1}, Lin/juspay/mystique/a$b;-><init>(Lin/juspay/mystique/a;Lorg/json/JSONObject;Landroid/view/View;)V

    .line 36
    invoke-virtual {v5}, Lin/juspay/mystique/a$b;->c()V

    .line 37
    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {v1, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 43
    invoke-virtual {v1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 44
    invoke-virtual {v0, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lin/juspay/mystique/a$b;

    .line 45
    invoke-virtual {p3}, Lin/juspay/mystique/a$b;->b()V

    .line 46
    invoke-virtual {v0, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method

.method private a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lin/juspay/mystique/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/juspay/mystique/a$a;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lin/juspay/mystique/a$a;

    invoke-direct {v0, p0}, Lin/juspay/mystique/a$a;-><init>(Lin/juspay/mystique/a;)V

    .line 51
    :cond_0
    invoke-virtual {v0, p2}, Lin/juspay/mystique/a$a;->a(Lorg/json/JSONObject;)V

    .line 52
    iget-object p2, p0, Lin/juspay/mystique/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 53
    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Instance object is not a view"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lin/juspay/mystique/a;Lorg/json/JSONObject;[Ljava/lang/String;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lin/juspay/mystique/a;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private varargs a(Lorg/json/JSONObject;[Ljava/lang/String;)Z
    .locals 4

    .line 6
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 7
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private b(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "resetAnimation"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lin/juspay/mystique/a;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/juspay/mystique/a;->c:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic c(Lin/juspay/mystique/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lin/juspay/mystique/a;->a:F

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 1

    .line 15
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 16
    invoke-direct {p0, p1}, Lin/juspay/mystique/a;->a(Ljava/lang/Object;)V

    .line 17
    check-cast p1, Landroid/view/View;

    .line 18
    invoke-direct {p0, p1, p3}, Lin/juspay/mystique/a;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 19
    invoke-direct {p0, p3}, Lin/juspay/mystique/a;->b(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lin/juspay/mystique/a;->a(Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
