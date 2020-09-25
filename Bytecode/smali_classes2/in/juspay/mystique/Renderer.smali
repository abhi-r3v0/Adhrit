.class public Lin/juspay/mystique/Renderer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/mystique/Renderer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/ViewGroup;

.field private c:Lin/juspay/mystique/DynamicUI;


# direct methods
.method constructor <init>(Lin/juspay/mystique/DynamicUI;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lin/juspay/mystique/InflateView;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "type"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "props"

    .line 68
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 70
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0, v0, v2}, Lin/juspay/mystique/Renderer;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 74
    :cond_0
    invoke-direct {p0, v0}, Lin/juspay/mystique/Renderer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    invoke-virtual {p2, v3, v2, v0}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "children"

    .line 85
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 86
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 87
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 88
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 89
    invoke-direct {p0, v2, p2}, Lin/juspay/mystique/Renderer;->a(Lorg/json/JSONObject;Lin/juspay/mystique/InflateView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 91
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_3
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/Queue;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Queue<",
            "Lin/juspay/mystique/Renderer$a;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "type"

    .line 97
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "props"

    .line 98
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 100
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0, v0, v2}, Lin/juspay/mystique/Renderer;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 104
    :cond_0
    invoke-direct {p0, v0}, Lin/juspay/mystique/Renderer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v4}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v0}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "children"

    .line 115
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 116
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 117
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 118
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 119
    invoke-direct {p0, v2, p2}, Lin/juspay/mystique/Renderer;->a(Lorg/json/JSONObject;Ljava/util/Queue;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 121
    new-instance v3, Lin/juspay/mystique/Renderer$a;

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {v3, v4, v2}, Lin/juspay/mystique/Renderer$a;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-interface {p2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_3
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, -0x1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "android.widget.RadioButton"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "android.widget.Button"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v4, "android.widget.TextView"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v4, "android.widget.ScrollView"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "android.widget.ImageView"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v4, "android.widget.ImageButton"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_6
    const-string v4, "android.widget.EditText"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "android.widget.CheckBox"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_8
    const-string v4, "android.widget.LinearLayout"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_9
    const-string v4, "android.widget.RelativeLayout"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_a
    const-string v4, "android.widget.FrameLayout"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 153
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Class;

    .line 154
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 156
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 157
    :pswitch_0
    new-instance p1, Landroid/widget/RadioButton;

    invoke-direct {p1, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 158
    :pswitch_1
    new-instance p1, Landroid/widget/CheckBox;

    invoke-direct {p1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 159
    :pswitch_2
    new-instance p1, Landroid/widget/ImageButton;

    invoke-direct {p1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 160
    :pswitch_3
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 161
    :pswitch_4
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 162
    :pswitch_5
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 163
    :pswitch_6
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 164
    :pswitch_7
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 165
    :pswitch_8
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 166
    :pswitch_9
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 167
    :pswitch_a
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 196
    :cond_1
    iget-object v3, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v3}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v3

    const-string v4, "Missing Activity"

    const-string v5, "getNewInstanceFromClassName, it is not  activity, it is applicationContext"

    invoke-interface {v3, v4, v5}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Class;

    .line 198
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 200
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cfbf3f4 -> :sswitch_a
        -0x75a77c1f -> :sswitch_9
        -0x554717c6 -> :sswitch_8
        -0xcc5bd52 -> :sswitch_7
        -0x8e34e9e -> :sswitch_6
        -0x2fcf27e -> :sswitch_5
        0x27fd74f5 -> :sswitch_4
        0x32286f5d -> :sswitch_3
        0x5bce347d -> :sswitch_2
        0x5e640cfd -> :sswitch_1
        0x632a0022 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private a(Landroid/view/View;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 202
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method private a(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lin/juspay/mystique/Renderer$a;",
            ">;)V"
        }
    .end annotation

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/juspay/mystique/Renderer$a;

    .line 15
    iget-object v1, v0, Lin/juspay/mystique/Renderer$a;->a:Landroid/view/ViewGroup;

    iget-object v0, v0, Lin/juspay/mystique/Renderer$a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 11
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isNull : fn__Render -  instance null "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-interface {p1, v1, v0}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/InflateView;->a()V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v0

    const-string v1, "modifyDom"

    invoke-virtual {v0, v1}, Lin/juspay/mystique/InflateView;->c(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lin/juspay/mystique/InflateView;->d(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ln: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lin/juspay/mystique/InflateView;->e(Ljava/lang/String;)V

    .line 207
    iget-object p3, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p3}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    .line 49
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v0, "ERROR"

    if-ltz p3, :cond_3

    .line 51
    iget-object v1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 56
    :cond_0
    iget-object p4, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p4, p2}, Lin/juspay/mystique/DynamicUI;->getViewFromScreenName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_2

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    .line 63
    :cond_2
    iget-object p1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " isNull : fn__addViewToParent - child null "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_3
    iget-object p1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " isNull : fn__addViewToParent - negative index "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    new-instance v0, Lin/juspay/mystique/InflateView;

    iget-object v1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-direct {v0, v1}, Lin/juspay/mystique/InflateView;-><init>(Lin/juspay/mystique/DynamicUI;)V

    .line 47
    invoke-direct {p0, p2, v0}, Lin/juspay/mystique/Renderer;->a(Lorg/json/JSONObject;Lin/juspay/mystique/InflateView;)Landroid/view/View;

    move-result-object p2

    .line 48
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0, p1, p2}, Lin/juspay/mystique/DynamicUI;->addToScreenMap(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v0, "ERROR"

    if-ltz p3, :cond_2

    .line 17
    iget-object v1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 28
    :cond_0
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    .line 29
    invoke-direct {p0, p2, p4}, Lin/juspay/mystique/Renderer;->a(Lorg/json/JSONObject;Ljava/util/Queue;)Landroid/view/View;

    move-result-object p2

    .line 31
    invoke-direct {p0, p4}, Lin/juspay/mystique/Renderer;->a(Ljava/util/Queue;)V

    if-eqz p2, :cond_1

    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " isNull : fn__addViewToParent - child null "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_2
    iget-object p1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_3

    .line 40
    iget-object p1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string p3, "Missing Container"

    const-string p4, "addViewToParent, InflateView, it is not  activity, it is applicationContext"

    invoke-interface {p1, p3, p4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "props"

    .line 42
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "type"

    .line 43
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lin/juspay/mystique/Renderer;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 45
    :cond_4
    iget-object p1, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " isNull : fn__addViewToParent - negative index "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Landroid/view/ViewGroup;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iput-object p2, p0, Lin/juspay/mystique/Renderer;->b:Landroid/view/ViewGroup;

    .line 3
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2}, Lin/juspay/mystique/Renderer;->a(Lorg/json/JSONObject;Ljava/util/Queue;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6
    iget-object p3, p0, Lin/juspay/mystique/Renderer;->a:Landroid/view/View;

    if-eqz p3, :cond_0

    if-eq p3, p1, :cond_0

    .line 7
    invoke-direct {p0, p3}, Lin/juspay/mystique/Renderer;->a(Landroid/view/View;)V

    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lin/juspay/mystique/Renderer;->a(Ljava/util/Queue;)V

    .line 11
    invoke-direct {p0, p1}, Lin/juspay/mystique/Renderer;->b(Landroid/view/View;)V

    .line 12
    iput-object p1, p0, Lin/juspay/mystique/Renderer;->a:Landroid/view/View;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/InflateView;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lin/juspay/mystique/InflateView;->c(Ljava/lang/String;)V

    const-string p1, "node_id"

    .line 3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lin/juspay/mystique/InflateView;->d(Ljava/lang/String;)V

    :cond_0
    const-string p1, "__filename"

    .line 8
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p2}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lin/juspay/mystique/InflateView;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()Lin/juspay/mystique/InflateView;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v0

    return-object v0
.end method

.method public createView(Lorg/json/JSONObject;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "type"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "props"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v0, v2}, Lin/juspay/mystique/Renderer;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lin/juspay/mystique/Renderer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14
    iget-object v4, p0, Lin/juspay/mystique/Renderer;->c:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v4}, Lin/juspay/mystique/DynamicUI;->d()Lin/juspay/mystique/InflateView;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v0}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "children"

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 21
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 23
    invoke-virtual {p0, v2}, Lin/juspay/mystique/Renderer;->createView(Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 25
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30
    :cond_3
    check-cast v0, Landroid/view/View;

    return-object v0
.end method
