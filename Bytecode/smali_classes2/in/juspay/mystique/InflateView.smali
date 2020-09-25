.class public Lin/juspay/mystique/InflateView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/mystique/InflateView$r;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "in.juspay.mystique.InflateView"

.field private static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lin/juspay/mystique/InflateView$r;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/widget/PopupMenu;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lin/juspay/mystique/DynamicUI;

.field private m:Lin/juspay/mystique/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?<!\\\\)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lin/juspay/mystique/InflateView;->p:Ljava/util/regex/Pattern;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lin/juspay/mystique/InflateView;->q:Ljava/util/regex/Pattern;

    .line 13
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Void;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lin/juspay/mystique/DynamicUI;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lin/juspay/mystique/InflateView;->a:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    const-string v0, "-1"

    .line 12
    iput-object v0, p0, Lin/juspay/mystique/InflateView;->h:Ljava/lang/String;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lin/juspay/mystique/InflateView;->i:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lin/juspay/mystique/InflateView;->j:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lin/juspay/mystique/InflateView;->k:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    iput-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    .line 25
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    const-string v1, "duiObj"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lin/juspay/mystique/a;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, p1, v1}, Lin/juspay/mystique/a;-><init>(Lin/juspay/mystique/DynamicUI;F)V

    iput-object v0, p0, Lin/juspay/mystique/InflateView;->m:Lin/juspay/mystique/a;

    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v0, "Missing Activity"

    const-string v1, "dismissPopUp, InflateView, it is not  activity, it is applicationContext"

    invoke-interface {p1, v0, v1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lin/juspay/mystique/InflateView;F)F
    .locals 0

    .line 2
    iput p1, p0, Lin/juspay/mystique/InflateView;->b:F

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .line 18
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v2, v0, p3

    add-int/lit8 v3, v2, -0x1

    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v2

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, p3

    return v0
.end method

.method private a(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;Lorg/json/JSONObject;)Landroid/animation/ObjectAnimator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "duration"

    .line 896
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delay"

    .line 897
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v2, v1

    :cond_1
    const-string v1, "repeatCount"

    .line 898
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v3, "startImmediate"

    .line 899
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    const-string v3, "easing"

    .line 900
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    const-string p3, "linear"

    .line 902
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_6

    .line 903
    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    float-to-long v5, v0

    .line 904
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    float-to-long v2, v2

    .line 905
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 906
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 907
    invoke-direct {p0, p3}, Lin/juspay/mystique/InflateView;->h(Ljava/lang/String;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v4, :cond_5

    .line 909
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;[F)Landroid/animation/TimeInterpolator;
    .locals 5

    .line 910
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    const/4 v0, -0x1

    .line 911
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x52fcc121

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    const v2, -0x3562fdf3    # -5144838.5f

    if-ne v1, v2, :cond_1

    const-string v1, "spring"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "bezier"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_3

    .line 915
    new-instance p1, Lin/juspay/mystique/InflateView$e;

    invoke-direct {p1, p0, p2}, Lin/juspay/mystique/InflateView$e;-><init>(Lin/juspay/mystique/InflateView;[F)V

    return-object p1

    .line 916
    :cond_2
    new-instance p1, Landroid/view/animation/PathInterpolator;

    aget v0, p2, v3

    aget v1, p2, v4

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p1

    .line 926
    :cond_3
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p1
.end method

.method static synthetic a(Lin/juspay/mystique/InflateView;)Lin/juspay/mystique/DynamicUI;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    return-object p0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 31
    iput-object v3, v0, Lin/juspay/mystique/InflateView;->i:Ljava/lang/String;

    const-string v4, "->"

    const/4 v5, 0x0

    .line 34
    invoke-direct {v0, v3, v4, v5}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    const-string v8, ":"

    const/4 v9, 0x1

    if-eq v6, v7, :cond_22

    .line 35
    invoke-direct {v0, v3, v4}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    const-string v10, "_"

    .line 42
    invoke-direct {v0, v6, v10, v5}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    const-string v12, "get"

    const/4 v13, 0x3

    if-eq v11, v7, :cond_0

    invoke-virtual {v6, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 43
    invoke-direct {v0, v6, v10}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 44
    aget-object v11, v6, v9

    .line 45
    aget-object v6, v6, v5

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 48
    :goto_0
    invoke-direct {v0, v3, v8, v5}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    if-eq v15, v7, :cond_1

    .line 49
    invoke-direct {v0, v3, v4}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    .line 50
    invoke-direct {v0, v3, v8}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 51
    aget-object v15, v4, v5

    .line 52
    aget-object v4, v4, v9

    goto :goto_1

    .line 54
    :cond_1
    invoke-direct {v0, v3, v4}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    move-object v15, v3

    const/4 v4, 0x0

    .line 60
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v16

    const/4 v7, 0x2

    sparse-switch v16, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v12, "this"

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_3

    :sswitch_1
    const-string v12, "infl"

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    goto :goto_3

    :sswitch_2
    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x4

    goto :goto_3

    :sswitch_3
    const-string v12, "ctx"

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x3

    goto :goto_3

    :sswitch_4
    const-string v12, "parent"

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x2

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v12, -0x1

    :goto_3
    const-string v5, " "

    const-string v14, "WARNING"

    if-eqz v12, :cond_1d

    if-eq v12, v9, :cond_19

    if-eq v12, v7, :cond_15

    if-eq v12, v13, :cond_10

    const/4 v1, 0x4

    if-eq v12, v1, :cond_a

    const-string v1, "var_"

    const/4 v5, 0x0

    .line 181
    invoke-direct {v0, v15, v1, v5}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    .line 182
    invoke-direct {v0, v15, v10}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v9

    .line 183
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 184
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 186
    invoke-direct {v0, v3, v8}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-direct {v0, v3}, Lin/juspay/mystique/InflateView;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    const-string v1, "new"

    .line 393
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {v0, v3, v8}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 415
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 417
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "forName"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 418
    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_6

    :cond_4
    if-eqz v4, :cond_5

    .line 421
    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 423
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    :cond_6
    if-eqz v4, :cond_9

    const-string v1, "in.juspay.mystique.DuiInvocationHandler"

    .line 424
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 425
    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    goto/16 :goto_5

    .line 428
    :cond_7
    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->k(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    .line 429
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 430
    array-length v5, v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_21

    aget-object v7, v3, v6

    .line 431
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->f(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 432
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v0, v8, v1}, Lin/juspay/mystique/InflateView;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 433
    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 440
    :cond_9
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    :cond_a
    if-eqz v11, :cond_21

    .line 187
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x0

    .line 189
    invoke-direct {v0, v15, v10, v6}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    const/4 v6, -0x1

    if-ne v7, v6, :cond_e

    if-eqz v1, :cond_e

    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v4, :cond_c

    if-eqz v6, :cond_b

    .line 194
    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 196
    :cond_b
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - get classMethodDetails "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - get classMethodDetails "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    if-eqz v6, :cond_d

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    .line 201
    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 203
    :cond_d
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - get classMethodDetails : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - get classMethodDetails : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    if-eqz v1, :cond_f

    .line 209
    invoke-direct {v0, v15, v10}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v9

    .line 210
    iget-object v2, v0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v8}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-direct {v0, v2, v1, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 212
    :cond_f
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " isNull : fn__runCommand - get_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is null "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 214
    :cond_10
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v1

    const-string v6, " isNull : fn__runCommand - ctx classMethodDetails  "

    if-eqz v1, :cond_14

    .line 215
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v4, :cond_12

    if-eqz v1, :cond_11

    .line 219
    iget-object v2, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v2}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 221
    :cond_11
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - ctx  classMethodDetails "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    if-eqz v1, :cond_13

    .line 226
    iget-object v2, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v2}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 228
    :cond_13
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 233
    :cond_14
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    const-string v4, "Missing Activity"

    const-string v7, "ctx, it is not  activity, it is applicationContext"

    invoke-interface {v1, v4, v7}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 236
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, " isNull : fn__runCommand - parent  classMethodDetails "

    if-eqz v4, :cond_17

    if-eqz v6, :cond_16

    .line 240
    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 242
    :cond_16
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_17
    if-eqz v6, :cond_18

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    .line 247
    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 249
    :cond_18
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - parent classMethodDetails  "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 251
    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v4, :cond_1b

    if-eqz v6, :cond_1a

    .line 255
    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 257
    :cond_1a
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - classMethodDetails  "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1b
    if-eqz v6, :cond_1c

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    .line 262
    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 264
    :cond_1c
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - this  classMethodDetails "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 266
    :cond_1d
    const-class v1, Lin/juspay/mystique/InflateView;

    invoke-direct {v0, v1, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v4, :cond_1f

    if-eqz v1, :cond_1e

    .line 270
    invoke-direct {v0, v4}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 272
    :cond_1e
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - infl  classMethodDetails "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_1f
    if-eqz v1, :cond_20

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    .line 277
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_6

    .line 279
    :cond_20
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " isNull : fn__runCommand - infl classMethodDetails  "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, v0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_5
    move-object v1, v2

    goto :goto_6

    :cond_22
    if-nez v2, :cond_24

    const/4 v4, 0x0

    .line 463
    invoke-direct {v0, v3, v8, v4}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_23

    .line 464
    invoke-direct {v0, v3, v8}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    .line 465
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 466
    invoke-direct {v0, v2}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    .line 468
    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_24
    const/4 v4, 0x0

    .line 472
    invoke-direct {v0, v3, v8, v4}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_25

    .line 473
    invoke-direct {v0, v3, v8}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v9

    .line 474
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-direct {v0, v1}, Lin/juspay/mystique/InflateView;->j(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    .line 476
    :cond_25
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x3b54f756 -> :sswitch_4
        0x18227 -> :sswitch_3
        0x18f56 -> :sswitch_2
        0x3164ab -> :sswitch_1
        0x364e9e -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 559
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 561
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 562
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 563
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_2

    .line 569
    invoke-direct {p0, p3}, Lin/juspay/mystique/InflateView;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 571
    :cond_2
    iget-object p3, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p3}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p3

    sget-object v0, Lin/juspay/mystique/InflateView;->n:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Couldn\'t set field for "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Lin/juspay/mystique/DuiLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object p1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ":"

    const/4 v2, 0x0

    .line 535
    invoke-direct {p0, p2, v1, v2}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    .line 536
    invoke-direct {p0, p2, v1}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 537
    aget-object v1, p2, v2

    .line 538
    aget-object p2, p2, v5

    goto :goto_0

    :cond_1
    move-object v1, p2

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 543
    invoke-direct {p0, p2}, Lin/juspay/mystique/InflateView;->k(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v0

    .line 544
    :cond_2
    new-instance p2, Lin/juspay/mystique/InflateView$r;

    invoke-direct {p2, p1, v1, v0}, Lin/juspay/mystique/InflateView$r;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 546
    iget-object v3, p0, Lin/juspay/mystique/InflateView;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1

    .line 551
    :cond_3
    :try_start_0
    invoke-direct {p0, p1, v1, v0}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-eqz v0, :cond_4

    .line 553
    array-length v3, v0

    if-ne v3, v5, :cond_4

    .line 554
    aget-object v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_1

    .line 556
    :cond_4
    invoke-direct {p0, p1, v1, v0}, Lin/juspay/mystique/InflateView;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 558
    :goto_1
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 515
    invoke-static {p3}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-array v0, v1, [Ljava/lang/Class;

    .line 517
    sget-object v3, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v0, v2

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 523
    :catch_0
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    :try_start_1
    new-array v6, v1, [Ljava/lang/Class;

    aput-object v5, v6, v2

    .line 525
    invoke-virtual {p1, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    new-array v0, v1, [Ljava/lang/Class;

    aput-object p3, v0, v2

    .line 530
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    nop

    .line 532
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    if-nez p3, :cond_0

    .line 534
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    sget-object p2, Lin/juspay/mystique/InflateView;->n:Ljava/lang/String;

    const-string p3, "Never reach here"

    invoke-interface {p1, p2, p3}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 514
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 936
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/text/TextWatcher;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "addTextChangedListener"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "onChange"

    .line 937
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 938
    new-instance v2, Lin/juspay/mystique/InflateView$g;

    invoke-direct {v2, p0, p1}, Lin/juspay/mystique/InflateView$g;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3
    sget-object v0, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 490
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_5

    .line 492
    aget-object v2, p2, v1

    if-eqz v2, :cond_4

    aget-object v2, p1, v1

    if-eqz v2, :cond_4

    aget-object v2, p1, v1

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 493
    :cond_0
    aget-object v2, p1, v1

    aget-object v4, p2, v1

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 494
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    .line 497
    :try_start_0
    aget-object v2, p2, v1

    const-string v4, "TYPE"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x0

    .line 498
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 500
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    return v0

    :catch_0
    return v3

    :catch_1
    return v0

    .line 508
    :cond_1
    aget-object v2, p1, v1

    const-class v4, Ljava/lang/ClassLoader;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 509
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dalvik.system.PathClassLoader"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 512
    :cond_2
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    .line 513
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return v3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    new-array p2, v2, [Ljava/lang/String;

    aput-object p1, p2, v0

    return-object p2

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    return-object v3
.end method

.method static synthetic b(Lin/juspay/mystique/InflateView;)F
    .locals 0

    .line 1
    iget p0, p0, Lin/juspay/mystique/InflateView;->b:F

    return p0
.end method

.method static synthetic b(Lin/juspay/mystique/InflateView;F)F
    .locals 0

    .line 2
    iput p1, p0, Lin/juspay/mystique/InflateView;->d:F

    return p1
.end method

.method private b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-string v0, "undefined"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v0

    sget-object v2, Lin/juspay/mystique/InflateView;->n:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tryMultiAgrumentDeepMatch reached. Beware slow function.. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lin/juspay/mystique/DuiLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 13
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 14
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    array-length v5, p3

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lin/juspay/mystique/InflateView;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/text/TextWatcher;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "addTextChangedListener"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 17
    move-object v2, p2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "onChange"

    .line 18
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    new-instance v5, Lin/juspay/mystique/InflateView$h;

    invoke-direct {v5, p0, p1, v3, v2}, Lin/juspay/mystique/InflateView$h;-><init>(Lin/juspay/mystique/InflateView;Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/EditText;)V

    aput-object v5, v1, v4

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lin/juspay/mystique/InflateView;)F
    .locals 0

    .line 1
    iget p0, p0, Lin/juspay/mystique/InflateView;->d:F

    return p0
.end method

.method static synthetic c(Lin/juspay/mystique/InflateView;F)F
    .locals 0

    .line 2
    iput p1, p0, Lin/juspay/mystique/InflateView;->c:F

    return p1
.end method

.method static synthetic d(Lin/juspay/mystique/InflateView;)F
    .locals 0

    .line 1
    iget p0, p0, Lin/juspay/mystique/InflateView;->c:F

    return p0
.end method

.method static synthetic d(Lin/juspay/mystique/InflateView;F)F
    .locals 0

    .line 2
    iput p1, p0, Lin/juspay/mystique/InflateView;->e:F

    return p1
.end method

.method static synthetic e(Lin/juspay/mystique/InflateView;)F
    .locals 0

    .line 1
    iget p0, p0, Lin/juspay/mystique/InflateView;->e:F

    return p0
.end method

.method private f(Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lin/juspay/mystique/InflateView;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method static synthetic f(Lin/juspay/mystique/InflateView;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic g(Lin/juspay/mystique/InflateView;)Landroid/widget/PopupMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/juspay/mystique/InflateView;->f:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Any:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TAny;"
        }
    .end annotation

    const-string v0, "WARNING"

    if-eqz p1, :cond_2

    const-string v1, "_"

    .line 2
    invoke-direct {p0, p1, v1}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    aget-object v3, v1, v2

    const/4 v4, -0x1

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "get"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "dpf"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "ctx"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_4
    const-string v2, "sp"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_5
    const-string v2, "dp"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    const-string v2, "cs"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_7
    const-string v2, "s"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_8
    const-string v2, "l"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_9
    const-string v5, "i"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :sswitch_a
    const-string v2, "f"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_b
    const-string v2, "b"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_c
    const-string v2, "strget"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 35
    :pswitch_1
    const-class p1, Ljava/lang/String;

    return-object p1

    .line 36
    :pswitch_2
    const-class p1, Landroid/content/Context;

    return-object p1

    .line 37
    :pswitch_3
    iget-object v2, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    aget-object v1, v1, v6

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 42
    :cond_1
    iget-object v1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " isNull : fn__getClassType - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :pswitch_4
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 48
    :pswitch_5
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 49
    :pswitch_6
    const-class p1, Ljava/lang/Float;

    return-object p1

    .line 50
    :pswitch_7
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 51
    :pswitch_8
    const-class p1, Ljava/lang/CharSequence;

    return-object p1

    .line 52
    :pswitch_9
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 53
    :pswitch_a
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 85
    :cond_2
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " isNull : fn__getClassType -  toConvert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_2
    const-class p1, Ljava/lang/String;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x352aa87b -> :sswitch_c
        0x62 -> :sswitch_b
        0x66 -> :sswitch_a
        0x69 -> :sswitch_9
        0x6c -> :sswitch_8
        0x73 -> :sswitch_7
        0xc70 -> :sswitch_6
        0xc8c -> :sswitch_5
        0xe5d -> :sswitch_4
        0x18227 -> :sswitch_3
        0x1855a -> :sswitch_2
        0x18f56 -> :sswitch_1
        0x33c587 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h(Ljava/lang/String;)Landroid/animation/TimeInterpolator;
    .locals 7

    const-string v0, "["

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ease-in-out"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "ease-out"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "linear"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "bounce"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "ease-in"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    .line 14
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array v0, p1, [F

    :goto_2
    if-ge v5, p1, :cond_1

    .line 35
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 37
    :cond_1
    invoke-direct {p0, v1, v0}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;[F)Landroid/animation/TimeInterpolator;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :cond_2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p1

    .line 15
    :cond_3
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p1

    .line 16
    :cond_4
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object p1

    .line 17
    :cond_5
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p1

    .line 18
    :cond_6
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p1

    .line 19
    :cond_7
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x75215c9c -> :sswitch_4
        -0x52720978 -> :sswitch_3
        -0x41b970db -> :sswitch_2
        -0x2f0a1f11 -> :sswitch_1
        -0x15938a9b -> :sswitch_0
    .end sparse-switch
.end method

.method private i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Any:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TAny;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    iget-object v1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    const-string v2, "getValue!"

    invoke-interface {v1, v2, p1}, Lin/juspay/mystique/DuiLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_"

    .line 3
    invoke-direct {p0, p1, v1}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 4
    aget-object v3, p1, v2

    const/4 v4, 0x1

    .line 5
    aget-object p1, p1, v4

    const/16 v5, 0x5c

    .line 7
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "\\\\;"

    .line 8
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\\\\_"

    .line 11
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v7, :cond_2

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\\\\:"

    .line 14
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v7, :cond_3

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "\\\\,"

    .line 17
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v7, :cond_4

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "\\\\="

    .line 20
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 22
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "get"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "dpf"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "ctx"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_4
    const-string v1, "sp"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "dp"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "s"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_7
    const-string v1, "l"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "i"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :sswitch_9
    const-string v1, "f"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_a
    const-string v1, "b"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_b
    const-string v1, "strget"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xb

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v1, "Missing Activity"

    packed-switch v2, :pswitch_data_0

    move-object v0, p1

    goto/16 :goto_2

    .line 56
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    return-object v0

    .line 57
    :pswitch_2
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 58
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object p1

    return-object p1

    .line 60
    :cond_6
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v0, "getValue ctx, it is not  activity, it is applicationContext"

    invoke-interface {p1, v1, v0}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->b()Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_3
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_5
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lin/juspay/mystique/InflateView;->a(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lin/juspay/mystique/InflateView;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_7
    iget-object v2, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v2}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 67
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 69
    :cond_7
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v2, "getValue sp, it is not  activity, it is applicationContext"

    invoke-interface {p1, v1, v2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_8
    return-object p1

    .line 70
    :pswitch_9
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_a
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 72
    :pswitch_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 107
    :cond_8
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " isNull : fn__getValue - value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WARNING"

    invoke-interface {p1, v3, v1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x352aa87b -> :sswitch_b
        0x62 -> :sswitch_a
        0x66 -> :sswitch_9
        0x69 -> :sswitch_8
        0x6c -> :sswitch_7
        0x73 -> :sswitch_6
        0xc8c -> :sswitch_5
        0xe5d -> :sswitch_4
        0x18227 -> :sswitch_3
        0x1855a -> :sswitch_2
        0x18f56 -> :sswitch_1
        0x33c587 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ","

    .line 5
    invoke-direct {p0, p1, v3, v2}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lin/juspay/mystique/InflateView;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    array-length v1, v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 8
    invoke-direct {p0, p1}, Lin/juspay/mystique/InflateView;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    sget-object v1, Lin/juspay/mystique/InflateView;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 13
    invoke-direct {p0, v3}, Lin/juspay/mystique/InflateView;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private k(Ljava/lang/String;)[Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "_"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ","

    .line 3
    invoke-direct {p0, p1, v2, v1}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    array-length v0, v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 4
    sget-object v0, Lin/juspay/mystique/InflateView;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v2, v0

    if-le v2, v4, :cond_2

    .line 7
    array-length p1, v0

    new-array p1, p1, [Ljava/lang/Class;

    .line 9
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 10
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lin/juspay/mystique/InflateView;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    new-array v0, v4, [Ljava/lang/Class;

    .line 17
    invoke-direct {p0, p1}, Lin/juspay/mystique/InflateView;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    aput-object p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(F)F
    .locals 3

    .line 11
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v0, "Missing Activity"

    const-string v2, "dpToPx, it is not  activity, it is applicationContext"

    invoke-interface {p1, v0, v2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 16
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_1
    return v1
.end method

.method public a(I)I
    .locals 3

    .line 4
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v0, "Missing Activity"

    const-string v2, "dpToPx, it is not  activity, it is applicationContext"

    invoke-interface {p1, v0, v2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-lez p1, :cond_1

    .line 9
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .line 893
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "M_anim_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 894
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 477
    sget-object v0, Lin/juspay/mystique/InflateView;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    .line 479
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    const-string v5, ""

    .line 480
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "="

    .line 481
    invoke-direct {p0, v4, v5, v1}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 482
    invoke-direct {p0, v4, v5}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 483
    aget-object v5, v4, v1

    const-string v6, "_"

    .line 484
    invoke-direct {p0, v5, v6}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 485
    aget-object v4, v4, v6

    invoke-direct {p0, p1, v2, v4}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 486
    iget-object v6, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v6, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v6}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v6

    sget-object v7, Lin/juspay/mystique/InflateView;->n:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setting "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lin/juspay/mystique/DuiLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :cond_0
    invoke-direct {p0, p1, v2, v4}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public a()V
    .locals 3

    .line 927
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lin/juspay/mystique/InflateView$f;

    invoke-direct {v1, p0}, Lin/juspay/mystique/InflateView$f;-><init>(Lin/juspay/mystique/InflateView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v0

    const-string v1, "Missing Activity"

    const-string v2, "dismissPopUp, it is not  activity, it is applicationContext"

    invoke-interface {v0, v1, v2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lorg/json/JSONArray;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    .line 870
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    move-object/from16 v4, p2

    .line 871
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 872
    new-instance v6, Lorg/json/JSONArray;

    const-string v7, "props"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v7, "id"

    .line 873
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_0

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v9

    :goto_1
    const-string v8, "onEnd"

    .line 874
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 875
    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    .line 877
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/16 v13, 0xb

    if-ge v11, v12, :cond_3

    .line 878
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "from"

    .line 879
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-float v14, v14

    const-string v15, "to"

    move/from16 v16, v3

    .line 880
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "prop"

    .line 881
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 882
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v13, :cond_2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v15, 0x0

    aput v14, v12, v15

    const/4 v13, 0x1

    aput v2, v12, v13

    .line 883
    invoke-static {v3, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v10, v11

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    goto :goto_2

    :cond_3
    move/from16 v16, v3

    const/4 v15, 0x0

    .line 886
    invoke-direct {v0, v1, v10, v5}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;Lorg/json/JSONObject;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 887
    new-instance v3, Landroid/util/Pair;

    move-object v6, v1

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 888
    iget-object v6, v0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "M_anim_"

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 890
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v13, :cond_4

    .line 891
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 892
    new-instance v5, Lin/juspay/mystique/InflateView$d;

    invoke-direct {v5, v0, v3}, Lin/juspay/mystique/InflateView$d;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    add-int/lit8 v3, v16, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "feedback"

    const-string v5, "afterRender"

    const-string v6, "animation"

    const-string v7, "onSeekBarChanged"

    const-string v8, "popupMenu"

    const-string v9, "onSwipe"

    const-string v10, "onDateChange"

    const-string v11, "onTouch"

    const-string v12, "onFocus"

    const-string v13, "onItemClick"

    const-string v14, "onClick"

    const-string v15, "onLongPress"

    move-object/from16 v16, v4

    const-string v4, "onKeyUp"

    move-object/from16 v17, v5

    const-string v5, "pattern"

    move-object/from16 v18, v6

    const-string v6, "listItem"

    move-object/from16 v19, v7

    :try_start_0
    const-string v7, "inlineAnimation"

    .line 572
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 573
    iget-object v4, v1, Lin/juspay/mystique/InflateView;->m:Lin/juspay/mystique/a;

    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5, v2}, Lin/juspay/mystique/a;->a(Ljava/lang/Object;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    return-void

    .line 576
    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v8

    const-string v8, "Missing Activity"

    move-object/from16 v21, v9

    const-string v9, "listData"

    if-eqz v7, :cond_3

    :try_start_1
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 577
    iget-object v0, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 578
    iget-object v0, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v0

    const-string v2, "listData, it is not  activity, it is applicationContext"

    invoke-interface {v0, v8, v2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 581
    :cond_1
    instance-of v0, v3, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 582
    :try_start_2
    move-object v0, v3

    check-cast v0, Landroid/widget/ListView;

    const/4 v3, 0x0

    .line 583
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 584
    iget-object v3, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v3}, Lin/juspay/mystique/DynamicUI;->getJsInterface()Lin/juspay/mystique/JsInterface;

    move-result-object v3

    invoke-virtual {v3}, Lin/juspay/mystique/JsInterface;->getRenderer()Lin/juspay/mystique/Renderer;

    move-result-object v12

    .line 585
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 586
    new-instance v15, Lorg/json/JSONArray;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v2, "itemView"

    .line 587
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v2, "holderViews"

    .line 588
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 589
    new-instance v2, Lin/juspay/mystique/b;

    iget-object v3, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v3}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v11

    iget-object v3, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    move-object v10, v2

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lin/juspay/mystique/b;-><init>(Landroid/app/Activity;Lin/juspay/mystique/Renderer;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lin/juspay/mystique/DynamicUI;)V

    .line 590
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    .line 595
    :cond_3
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_5

    .line 596
    instance-of v0, v3, Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 597
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/widget/ListView;

    .line 598
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Lin/juspay/mystique/b;

    if-eqz v2, :cond_4

    .line 600
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lin/juspay/mystique/b;

    .line 601
    invoke-virtual {v0, v3}, Lin/juspay/mystique/b;->a(Lorg/json/JSONArray;)V

    .line 602
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void

    .line 608
    :cond_5
    iget-object v6, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v6}, Lin/juspay/mystique/DynamicUI;->getHandler()Lin/juspay/mystique/c;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v6}, Lin/juspay/mystique/DynamicUI;->getHandler()Lin/juspay/mystique/c;

    move-result-object v6

    invoke-interface {v6, v0, v2, v3}, Lin/juspay/mystique/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    return-void

    .line 611
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v7, ","

    if-eqz v6, :cond_8

    .line 612
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v9, "setFilters"

    move-object/from16 v23, v8

    move-object/from16 v24, v10

    const/4 v8, 0x1

    :try_start_5
    new-array v10, v8, [Ljava/lang/Class;

    const-class v8, [Landroid/text/InputFilter;

    const/16 v22, 0x0

    aput-object v8, v10, v22

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 613
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 614
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 615
    aget-object v9, v5, v8

    .line 618
    array-length v8, v5

    const/4 v10, 0x1

    if-ne v8, v10, :cond_7

    const/16 v5, 0x2710

    goto :goto_0

    .line 621
    :cond_7
    aget-object v5, v5, v10

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 624
    :goto_0
    new-instance v8, Lin/juspay/mystique/InflateView$i;

    invoke-direct {v8, v1, v9}, Lin/juspay/mystique/InflateView$i;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 635
    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x1

    aput-object v8, v9, v5

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v9, v8, v10

    .line 636
    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    move-object/from16 v23, v8

    move-object/from16 v24, v10

    .line 639
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 640
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 641
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v6, "setOnKeyListener"

    const/4 v8, 0x1

    :try_start_6
    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/view/View$OnKeyListener;

    const/16 v22, 0x0

    aput-object v10, v9, v22

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 642
    new-instance v8, Lin/juspay/mystique/InflateView$j;

    invoke-direct {v8, v1, v4}, Lin/juspay/mystique/InflateView$j;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    aput-object v8, v6, v22

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_9
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 652
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 653
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v6, "setOnLongClickListener"

    const/4 v8, 0x1

    :try_start_7
    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/view/View$OnLongClickListener;

    const/4 v15, 0x0

    aput-object v10, v9, v15

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 654
    new-instance v8, Lin/juspay/mystique/InflateView$k;

    invoke-direct {v8, v1, v4}, Lin/juspay/mystique/InflateView$k;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    aput-object v8, v6, v15

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_a
    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 664
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 665
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v6, "setOnClickListener"

    const/4 v8, 0x1

    :try_start_8
    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/view/View$OnClickListener;

    const/4 v14, 0x0

    aput-object v10, v9, v14

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 666
    new-instance v8, Lin/juspay/mystique/InflateView$l;

    invoke-direct {v8, v1, v4}, Lin/juspay/mystique/InflateView$l;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    aput-object v8, v6, v14

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_b
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v4, :cond_d

    .line 675
    instance-of v4, v3, Landroid/widget/ListView;

    if-nez v4, :cond_c

    return-void

    .line 678
    :cond_c
    :try_start_9
    move-object v4, v3

    check-cast v4, Landroid/widget/ListView;

    .line 679
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 680
    new-instance v6, Lin/juspay/mystique/InflateView$m;

    invoke-direct {v6, v1, v5}, Lin/juspay/mystique/InflateView$m;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_d
    const-string v4, "onChange"

    .line 688
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "separator"

    .line 689
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 690
    invoke-direct {v1, v2, v3}, Lin/juspay/mystique/InflateView;->b(Lorg/json/JSONObject;Ljava/lang/Object;)V

    goto :goto_2

    .line 692
    :cond_e
    invoke-direct {v1, v2, v3}, Lin/juspay/mystique/InflateView;->a(Lorg/json/JSONObject;Ljava/lang/Object;)V

    .line 698
    :cond_f
    :goto_2
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 699
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v5, "setOnFocusChangeListener"

    const/4 v6, 0x1

    :try_start_a
    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/view/View$OnFocusChangeListener;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 700
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    .line 701
    new-instance v6, Lin/juspay/mystique/InflateView$n;

    invoke-direct {v6, v1, v5}, Lin/juspay/mystique/InflateView$n;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v6, v8, v5

    invoke-virtual {v4, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_10
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v5, "setOnTouchListener"

    if-eqz v4, :cond_11

    .line 710
    :try_start_b
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 711
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/view/View$OnTouchListener;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v6, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v9, v8, [Ljava/lang/Object;

    .line 712
    new-instance v8, Lin/juspay/mystique/InflateView$o;

    invoke-direct {v8, v1, v4}, Lin/juspay/mystique/InflateView$o;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    aput-object v8, v9, v11

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object/from16 v4, v24

    .line 723
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v8, 0xb

    if-eqz v6, :cond_12

    .line 724
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 725
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_12

    .line 726
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v9, "setOnDateChangeListener"

    const/4 v10, 0x1

    :try_start_c
    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Landroid/widget/CalendarView$OnDateChangeListener;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v6, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v9, v10, [Ljava/lang/Object;

    .line 727
    new-instance v10, Lin/juspay/mystique/InflateView$p;

    invoke-direct {v10, v1, v4}, Lin/juspay/mystique/InflateView$p;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    aput-object v10, v9, v13

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    move-object/from16 v4, v21

    .line 737
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 738
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 739
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/view/View$OnTouchListener;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v6, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 740
    new-instance v9, Lin/juspay/mystique/InflateView$q;

    invoke-direct {v9, v1, v4}, Lin/juspay/mystique/InflateView$q;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    aput-object v9, v6, v12

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    move-object/from16 v4, v20

    .line 784
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_17

    .line 785
    iget-object v5, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v5}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_14

    .line 786
    iget-object v0, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v0

    const-string v2, "popupMenu, it is not  activity, it is applicationContext"

    move-object/from16 v3, v23

    invoke-interface {v0, v3, v2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 790
    :cond_14
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lin/juspay/mystique/InflateView;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "onMenuItemClick"

    .line 792
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 793
    new-instance v6, Landroid/widget/PopupMenu;

    iget-object v8, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v8}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Landroid/view/View;

    invoke-direct {v6, v8, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v6, v1, Lin/juspay/mystique/InflateView;->f:Landroid/widget/PopupMenu;

    const/4 v6, 0x0

    .line 794
    :goto_3
    array-length v8, v4

    if-ge v6, v8, :cond_16

    .line 795
    aget-object v8, v4, v6

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    aget-object v8, v4, v6

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 796
    aget-object v8, v4, v6

    const-string v9, "\\\\,"

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    .line 798
    :cond_15
    iget-object v8, v1, Lin/juspay/mystique/InflateView;->f:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    aget-object v9, v4, v6

    const/4 v10, 0x0

    invoke-interface {v8, v10, v6, v10, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 800
    :cond_16
    iget-object v4, v1, Lin/juspay/mystique/InflateView;->f:Landroid/widget/PopupMenu;

    new-instance v6, Lin/juspay/mystique/InflateView$a;

    invoke-direct {v6, v1, v5}, Lin/juspay/mystique/InflateView$a;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 808
    iget-object v4, v1, Lin/juspay/mystique/InflateView;->f:Landroid/widget/PopupMenu;

    .line 809
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    new-instance v6, Lin/juspay/mystique/InflateView$b;

    invoke-direct {v6, v1, v4}, Lin/juspay/mystique/InflateView$b;-><init>(Lin/juspay/mystique/InflateView;Landroid/widget/PopupMenu;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    move-object/from16 v4, v19

    .line 819
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 820
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 821
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v6, "setOnSeekBarChangeListener"

    const/4 v7, 0x1

    :try_start_d
    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 822
    new-instance v7, Lin/juspay/mystique/InflateView$c;

    invoke-direct {v7, v1, v4}, Lin/juspay/mystique/InflateView$c;-><init>(Lin/juspay/mystique/InflateView;Ljava/lang/String;)V

    aput-object v7, v6, v10

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string v4, "runInUI"

    .line 844
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 845
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 846
    invoke-virtual {v1, v3, v4}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :cond_19
    move-object/from16 v4, v18

    .line 849
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 850
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Object;Lorg/json/JSONArray;)V

    :cond_1a
    move-object/from16 v3, v17

    .line 854
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "id"

    .line 855
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 856
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:window.callUICallback(\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\');"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 857
    iget-object v4, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v4, v3}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v3, v16

    .line 860
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "id"

    .line 862
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "javascript:window.callUICallback(\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', \'feedback\');"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 864
    iget-object v2, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v2, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 868
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 869
    iget-object v2, v1, Lin/juspay/mystique/InflateView;->l:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v2}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " excep: fn__parseKeys  - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WARNING"

    invoke-interface {v2, v3, v0}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lin/juspay/mystique/InflateView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lin/juspay/mystique/InflateView;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lin/juspay/mystique/InflateView;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lin/juspay/mystique/InflateView;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lin/juspay/mystique/InflateView;->j:Ljava/lang/String;

    return-void
.end method

.method public convertAndStoreArray(Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-eqz p4, :cond_0

    .line 4
    sget-object p4, Lin/juspay/mystique/InflateView;->o:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 7
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, v0, :cond_1

    .line 9
    invoke-virtual {p1, p4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, p4, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lin/juspay/mystique/InflateView;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lin/juspay/mystique/InflateView;->h:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lin/juspay/mystique/InflateView;->k:Ljava/lang/String;

    return-void
.end method
