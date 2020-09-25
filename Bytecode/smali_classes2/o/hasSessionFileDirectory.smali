.class public final Lo/hasSessionFileDirectory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hasSessionFileDirectory$extraCallback;,
        Lo/hasSessionFileDirectory$onNavigationEvent;,
        Lo/hasSessionFileDirectory$onMessageChannelReady;,
        Lo/hasSessionFileDirectory$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/SessionSettingsData;

.field private final ICustomTabsCallback$Stub:Lo/getAppSettingsData;

.field private final extraCallback:Lo/hasSessionFileDirectory$onPostMessage;

.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getAuthTokenProvider$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/os/Handler;

.field private final onPostMessage:Lo/hasSessionFileDirectory$onMessageChannelReady;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lo/getAppSettingsData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lo/getAuthTokenProvider$1;",
            ">;",
            "Lo/getAppSettingsData;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object p1

    iput-object p1, p0, Lo/hasSessionFileDirectory;->ICustomTabsCallback:Lo/SessionSettingsData;

    .line 53
    iput-object p2, p0, Lo/hasSessionFileDirectory;->onMessageChannelReady:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lo/hasSessionFileDirectory;->ICustomTabsCallback$Stub:Lo/getAppSettingsData;

    .line 55
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/hasSessionFileDirectory;->onNavigationEvent:Landroid/os/Handler;

    .line 56
    new-instance p1, Lo/hasSessionFileDirectory$onMessageChannelReady;

    invoke-direct {p1}, Lo/hasSessionFileDirectory$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/hasSessionFileDirectory;->onPostMessage:Lo/hasSessionFileDirectory$onMessageChannelReady;

    .line 57
    new-instance p1, Lo/hasSessionFileDirectory$onPostMessage;

    invoke-direct {p1}, Lo/hasSessionFileDirectory$onPostMessage;-><init>()V

    iput-object p1, p0, Lo/hasSessionFileDirectory;->extraCallback:Lo/hasSessionFileDirectory$onPostMessage;

    return-void
.end method

.method private extraCallback(Landroid/util/JsonWriter;Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/hasSessionFileDirectory;->ICustomTabsCallback:Lo/SessionSettingsData;

    .line 2439
    iget-boolean v0, v0, Lo/SessionSettingsData;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lo/hasSessionFileDirectory;->ICustomTabsCallback$Stub:Lo/getAppSettingsData;

    invoke-interface {v1, v0}, Lo/getAppSettingsData;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v2, "hashCode"

    .line 145
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "id"

    .line 146
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "mp_id_name"

    .line 147
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "contentDescription"

    if-nez v0, :cond_2

    .line 151
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 156
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tag"

    if-nez v0, :cond_3

    .line 158
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_2

    .line 159
    :cond_3
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 160
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_4
    :goto_2
    const-string v0, "top"

    .line 163
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v1, "left"

    .line 164
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "width"

    .line 165
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "height"

    .line 166
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "scrollX"

    .line 167
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "scrollY"

    .line 168
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "visibility"

    .line 169
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 173
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-lt v2, v3, :cond_5

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 175
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    const-string v3, "translationX"

    .line 178
    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const-string v3, "translationY"

    .line 179
    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const-string v2, "classes"

    .line 181
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 182
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 183
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 185
    :cond_6
    iget-object v4, p0, Lo/hasSessionFileDirectory;->extraCallback:Lo/hasSessionFileDirectory$onPostMessage;

    invoke-virtual {v4, v3}, Lo/hasSessionFileDirectory$onPostMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 186
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 187
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_7

    if-nez v3, :cond_6

    .line 188
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 3235
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 3236
    iget-object v4, p0, Lo/hasSessionFileDirectory;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/getAuthTokenProvider$1;

    .line 3237
    iget-object v6, v5, Lo/getAuthTokenProvider$1;->onNavigationEvent:Ljava/lang/Class;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v5, Lo/getAuthTokenProvider$1;->onMessageChannelReady:Lo/moveRedLeft$3;

    if-eqz v6, :cond_8

    .line 3238
    iget-object v6, v5, Lo/getAuthTokenProvider$1;->onMessageChannelReady:Lo/moveRedLeft$3;

    .line 4038
    iget-object v7, v6, Lo/moveRedLeft$3;->onPostMessage:[Ljava/lang/Object;

    invoke-virtual {v6, p2, v7}, Lo/moveRedLeft$3;->ICustomTabsCallback(Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 3241
    instance-of v7, v6, Ljava/lang/Number;

    if-eqz v7, :cond_9

    .line 3242
    iget-object v5, v5, Lo/getAuthTokenProvider$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    goto :goto_4

    .line 3243
    :cond_9
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_a

    .line 3244
    iget-object v5, v5, Lo/getAuthTokenProvider$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    goto :goto_4

    .line 3245
    :cond_a
    instance-of v7, v6, Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_b

    .line 3246
    iget-object v5, v5, Lo/getAuthTokenProvider$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    check-cast v6, Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    goto :goto_4

    .line 3247
    :cond_b
    instance-of v7, v6, Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_e

    .line 3248
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 3249
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 3250
    iget-object v5, v5, Lo/getAuthTokenProvider$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3251
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 3252
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3253
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 3254
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 3255
    :goto_5
    const-class v8, Ljava/lang/Object;

    if-eq v5, v8, :cond_c

    .line 3256
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3257
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_5

    .line 3259
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v5, "dimensions"

    .line 3260
    invoke-virtual {p1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3261
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 3262
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v5, "right"

    .line 3263
    invoke-virtual {p1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    iget v8, v7, Landroid/graphics/Rect;->right:I

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 3264
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    iget v8, v7, Landroid/graphics/Rect;->top:I

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v5, "bottom"

    .line 3265
    invoke-virtual {p1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 3266
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 3267
    instance-of v5, v6, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_d

    .line 3268
    check-cast v6, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "color"

    .line 3269
    invoke-virtual {p1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 3271
    :cond_d
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto/16 :goto_4

    .line 3273
    :cond_e
    iget-object v5, v5, Lo/getAuthTokenProvider$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto/16 :goto_4

    .line 192
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 193
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 194
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 195
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const-string v1, "layoutRules"

    .line 196
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 197
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 198
    array-length v1, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    int-to-long v4, v4

    .line 199
    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 201
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    :cond_11
    const-string v0, "subviews"

    .line 204
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 205
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 206
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 207
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    .line 208
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_13

    .line 210
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 213
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 217
    :cond_13
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 218
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    if-eqz v0, :cond_15

    .line 221
    check-cast p2, Landroid/view/ViewGroup;

    .line 222
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_8
    if-ge v2, v0, :cond_15

    .line 224
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 227
    invoke-direct {p0, p1, v1}, Lo/hasSessionFileDirectory;->extraCallback(Landroid/util/JsonWriter;Landroid/view/View;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/writeSessionJsonFile;Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeSessionJsonFile<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "MixpanelAPI.Snapshot"

    .line 66
    iget-object v1, p0, Lo/hasSessionFileDirectory;->onPostMessage:Lo/hasSessionFileDirectory$onMessageChannelReady;

    .line 1298
    iput-object p1, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->ICustomTabsCallback:Lo/writeSessionJsonFile;

    .line 67
    new-instance p1, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lo/hasSessionFileDirectory;->onPostMessage:Lo/hasSessionFileDirectory$onMessageChannelReady;

    invoke-direct {p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 68
    iget-object v1, p0, Lo/hasSessionFileDirectory;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "["

    .line 72
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-wide/16 v3, 0x1

    .line 75
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "Exception thrown during screenshot attempt"

    .line 81
    invoke-static {v0, v3, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v3, "Screenshot took more than 1 second to be scheduled and executed. No screenshot will be sent."

    .line 79
    invoke-static {v0, v3, p1}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v3, "Screenshot interrupted, no screenshot will be sent."

    .line 77
    invoke-static {v0, v3, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    const-string v4, ","

    if-lez v3, :cond_0

    .line 87
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/hasSessionFileDirectory$extraCallback;

    const-string v6, "{"

    .line 90
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v6, "\"activity\":"

    .line 91
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 92
    iget-object v6, v5, Lo/hasSessionFileDirectory$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v6, "\"scale\":"

    .line 94
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 95
    iget v7, v5, Lo/hasSessionFileDirectory$extraCallback;->extraCallback:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v6, "\"serialized_objects\":"

    .line 97
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    new-instance v6, Landroid/util/JsonWriter;

    invoke-direct {v6, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 100
    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v7, "rootObject"

    .line 101
    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v7

    iget-object v8, v5, Lo/hasSessionFileDirectory$extraCallback;->onPostMessage:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v7, "objects"

    .line 102
    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 103
    iget-object v7, v5, Lo/hasSessionFileDirectory$extraCallback;->onPostMessage:Landroid/view/View;

    .line 2125
    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 2126
    invoke-direct {p0, v6, v7}, Lo/hasSessionFileDirectory;->extraCallback(Landroid/util/JsonWriter;Landroid/view/View;)V

    .line 2127
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 104
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 105
    invoke-virtual {v6}, Landroid/util/JsonWriter;->flush()V

    .line 107
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "\"screenshot\":"

    .line 108
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 110
    iget-object v4, v5, Lo/hasSessionFileDirectory$extraCallback;->ICustomTabsCallback:Lo/hasSessionFileDirectory$onNavigationEvent;

    invoke-virtual {v4, p2}, Lo/hasSessionFileDirectory$onNavigationEvent;->extraCallback(Ljava/io/OutputStream;)V

    const-string v4, "}"

    .line 111
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_1
    const-string p1, "]"

    .line 114
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    return-void
.end method
