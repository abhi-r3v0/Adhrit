.class public final Lcom/mixpanel/android/viewcrawler/EditProtocol;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;,
        Lcom/mixpanel/android/viewcrawler/EditProtocol$CantGetEditAssetsException;,
        Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException;,
        Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/getAppSettingsData;

.field private final extraCallback:Lo/FirebaseCrashlyticsNdk$asBinder;

.field private final onMessageChannelReady:Landroid/content/Context;

.field private final onPostMessage:Lcom/mixpanel/android/util/ImageStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 431
    sput-object v0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onNavigationEvent:[Ljava/lang/Class;

    .line 432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onTransact:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/getAppSettingsData;Lcom/mixpanel/android/util/ImageStore;Lo/FirebaseCrashlyticsNdk$asBinder;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onMessageChannelReady:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback:Lo/getAppSettingsData;

    .line 71
    iput-object p3, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onPostMessage:Lcom/mixpanel/android/util/ImageStore;

    .line 72
    iput-object p4, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->extraCallback:Lo/FirebaseCrashlyticsNdk$asBinder;

    return-void
.end method

.method private static ICustomTabsCallback(ILjava/lang/String;Lo/getAppSettingsData;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "MixpanelAPI.EProtocol"

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    .line 295
    invoke-interface {p2, p1}, Lo/getAppSettingsData;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    invoke-interface {p2, p1}, Lo/getAppSettingsData;->extraCallback(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 298
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Path element contains an id name not known to the system. No views will be matched.\nMake sure that you\'re not stripping your packages R class out with proguard.\nid name was \""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    if-eq v2, p1, :cond_2

    if-eq v2, p0, :cond_2

    if-eq p1, p0, :cond_2

    const-string p0, "Path contains both a named and an explicit id, and they don\'t match. No views will be matched."

    .line 310
    invoke-static {v1, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    if-eq v2, p1, :cond_3

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 318
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;,
            Lcom/mixpanel/android/viewcrawler/EditProtocol$CantGetEditAssetsException;
        }
    .end annotation

    :try_start_0
    const-string v0, "java.lang.CharSequence"

    .line 357
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "boolean"

    .line 359
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "java.lang.Boolean"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, "int"

    .line 361
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "java.lang.Integer"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "float"

    .line 363
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "java.lang.Float"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "android.graphics.drawable.Drawable"

    .line 365
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0, p3}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onPostMessage(Lorg/json/JSONObject;Ljava/util/List;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "android.graphics.drawable.BitmapDrawable"

    .line 368
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0, p3}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onPostMessage(Lorg/json/JSONObject;Ljava/util/List;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p3, "android.graphics.drawable.ColorDrawable"

    .line 370
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 371
    move-object p3, p1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 372
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0

    .line 374
    :cond_6
    new-instance p3, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t know how to interpret type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (arg was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 364
    :cond_7
    :goto_0
    move-object p3, p1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 362
    :cond_8
    :goto_1
    move-object p3, p1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    return-object p1

    .line 377
    :catch_0
    new-instance p3, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t interpret <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "> as "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private static ICustomTabsCallback(Ljava/lang/Class;Lorg/json/JSONObject;)Lo/getAuthTokenProvider$1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/getAuthTokenProvider$1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;
        }
    .end annotation

    const-string v0, "set"

    const-string v1, "get"

    :try_start_0
    const-string v2, "name"

    .line 324
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "selector"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 328
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 329
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "result"

    .line 330
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 332
    new-instance v6, Lo/moveRedLeft$3;

    sget-object v7, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onNavigationEvent:[Ljava/lang/Class;

    invoke-direct {v6, p0, v3, v7, v1}, Lo/moveRedLeft$3;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    move-object v6, v5

    .line 336
    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 338
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 343
    :cond_1
    new-instance p1, Lo/getAuthTokenProvider$1;

    invoke-direct {p1, v2, p0, v6, v5}, Lo/getAuthTokenProvider$1;-><init>(Ljava/lang/String;Ljava/lang/Class;Lo/moveRedLeft$3;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 349
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v0, "Can\'t read property JSON, relevant arg/return class not found"

    invoke-direct {p1, v0, p0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 347
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v0, "Can\'t read property JSON"

    invoke-direct {p1, v0, p0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 345
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v0, "Can\'t create property reader"

    invoke-direct {p1, v0, p0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ICustomTabsCallback(Lorg/json/JSONObject;)Lo/trimRepeats;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/trimRepeats<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;
        }
    .end annotation

    :try_start_0
    const-string v0, "name"

    .line 225
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    .line 226
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    .line 228
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "value"

    if-eqz v2, :cond_2

    :try_start_1
    const-string v1, "encoding"

    .line 229
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d"

    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v2, "l"

    .line 232
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    .line 235
    :cond_1
    new-instance v0, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v1, "number must have encoding of type \"l\" for long or \"d\" for double in: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v2, "boolean"

    .line 237
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v2, "string"

    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 245
    :goto_0
    new-instance v1, Lo/trimRepeats;

    invoke-direct {v1, v0, p0}, Lo/trimRepeats;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 242
    :cond_4
    new-instance v0, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized tweak type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 247
    new-instance v0, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v1, "Can\'t read tweak update"

    invoke-direct {v0, v1, p0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static extraCallback(Lorg/json/JSONArray;Lo/getAppSettingsData;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lo/getAppSettingsData;",
            ")",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 255
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 256
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "prefix"

    .line 1021
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1022
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v6

    :goto_1
    const-string v5, "view_class"

    .line 2021
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2022
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_2

    :cond_1
    move-object v9, v6

    :goto_2
    const/4 v5, -0x1

    const-string v7, "index"

    .line 260
    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v7, "contentDescription"

    .line 3021
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3022
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    goto :goto_3

    :cond_2
    move-object v12, v6

    :goto_3
    const-string v7, "id"

    .line 262
    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "mp_id_name"

    .line 4021
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 4022
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_3
    move-object v7, v6

    :goto_4
    const-string v8, "tag"

    .line 5021
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 5022
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    move-object v13, v6

    const-string v3, "shortest"

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    if-nez v4, :cond_7

    const/4 v8, 0x0

    .line 278
    :goto_5
    invoke-static {v5, v7, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(ILjava/lang/String;Lo/getAppSettingsData;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_6

    .line 280
    sget-object p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onTransact:Ljava/util/List;

    return-object p0

    .line 282
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 285
    new-instance v3, Lo/getFilesForSession$extraCallback;

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lo/getFilesForSession$extraCallback;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 272
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unrecognized prefix type \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\". No views will be matched"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MixpanelAPI.EProtocol"

    invoke-static {p1, p0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onTransact:Ljava/util/List;

    return-object p0

    :cond_8
    return-object v0
.end method

.method private onPostMessage(Lorg/json/JSONObject;Ljava/util/List;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;,
            Lcom/mixpanel/android/viewcrawler/EditProtocol$CantGetEditAssetsException;
        }
    .end annotation

    const-string v0, "dimensions"

    const-string v1, "url"

    .line 384
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 388
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "left"

    .line 400
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "right"

    .line 401
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "top"

    .line 402
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "bottom"

    .line 403
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    move v4, p1

    move p1, v3

    const/4 v3, 0x1

    .line 409
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onPostMessage:Lcom/mixpanel/android/util/ImageStore;

    invoke-virtual {v5, v1}, Lcom/mixpanel/android/util/ImageStore;->onPostMessage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 410
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/mixpanel/android/util/ImageStore$CantGetImageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    :try_start_2
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p2, v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v3, :cond_1

    .line 417
    invoke-virtual {p2, p1, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-object p2

    :catch_0
    move-exception p1

    .line 412
    new-instance p2, Lcom/mixpanel/android/viewcrawler/EditProtocol$CantGetEditAssetsException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$CantGetEditAssetsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 385
    :cond_2
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string p2, "Can\'t construct a BitmapDrawable with a null url"

    invoke-direct {p1, p2}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 422
    new-instance p2, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v0, "Couldn\'t read drawable description"

    invoke-direct {p2, v0, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final ICustomTabsCallback(Lorg/json/JSONObject;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)Lo/FirebaseCrashlyticsNdk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;
        }
    .end annotation

    :try_start_0
    const-string v0, "event_name"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_type"

    .line 78
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    .line 80
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 81
    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback:Lo/getAppSettingsData;

    invoke-static {p1, v2}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->extraCallback(Lorg/json/JSONArray;Lo/getAppSettingsData;)Ljava/util/List;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "click"

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    new-instance v1, Lo/FirebaseCrashlyticsNdk$onPostMessage;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, v0, p2}, Lo/FirebaseCrashlyticsNdk$onPostMessage;-><init>(Ljava/util/List;ILjava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)V

    return-object v1

    :cond_0
    const-string v2, "selected"

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    new-instance v1, Lo/FirebaseCrashlyticsNdk$onPostMessage;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2, v0, p2}, Lo/FirebaseCrashlyticsNdk$onPostMessage;-><init>(Ljava/util/List;ILjava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)V

    return-object v1

    :cond_1
    const-string v2, "text_changed"

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    new-instance v1, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;

    invoke-direct {v1, p1, v0, p2}, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;-><init>(Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)V

    return-object v1

    :cond_2
    const-string v2, "detected"

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    new-instance v1, Lo/FirebaseCrashlyticsNdk$newSession;

    invoke-direct {v1, p1, v0, p2}, Lo/FirebaseCrashlyticsNdk$newSession;-><init>(Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)V

    return-object v1

    .line 106
    :cond_3
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Mixpanel can\'t track event type \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_4
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "event \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' will not be bound to any element in the UI."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v0, "Can\'t interpret instructions due to JSONException"

    invoke-direct {p2, v0, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final onNavigationEvent(Lorg/json/JSONObject;)Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;,
            Lcom/mixpanel/android/viewcrawler/EditProtocol$CantGetEditAssetsException;
        }
    .end annotation

    const-string v0, "change_type"

    const-string v1, "property"

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v3, "path"

    .line 118
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 119
    iget-object v4, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback:Lo/getAppSettingsData;

    invoke-static {v3, v4}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->extraCallback(Lorg/json/JSONArray;Lo/getAppSettingsData;)Ljava/util/List;

    move-result-object v3

    .line 121
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_b

    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "args"

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 126
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "classname"

    .line 127
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_3

    .line 134
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    :try_start_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(Ljava/lang/Class;Lorg/json/JSONObject;)Lo/getAuthTokenProvider$1;

    move-result-object v0

    .line 140
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 142
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 143
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 144
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    .line 145
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-direct {p0, v7, v5, v2}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    iget-object p1, v0, Lo/getAuthTokenProvider$1;->extraCallback:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 1018
    :cond_1
    new-instance p1, Lo/moveRedLeft$3;

    iget-object v4, v0, Lo/getAuthTokenProvider$1;->onNavigationEvent:Ljava/lang/Class;

    iget-object v5, v0, Lo/getAuthTokenProvider$1;->extraCallback:Ljava/lang/String;

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {p1, v4, v5, v1, v7}, Lo/moveRedLeft$3;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_1
    if-eqz p1, :cond_2

    .line 154
    new-instance v1, Lo/FirebaseCrashlyticsNdk$asInterface;

    iget-object v0, v0, Lo/getAuthTokenProvider$1;->onMessageChannelReady:Lo/moveRedLeft$3;

    invoke-direct {v1, v3, p1, v0}, Lo/FirebaseCrashlyticsNdk$asInterface;-><init>(Ljava/util/List;Lo/moveRedLeft$3;Lo/moveRedLeft$3;)V

    goto/16 :goto_6

    .line 151
    :cond_2
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t update a read-only property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lo/getAuthTokenProvider$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (add a mutator to make this work)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 136
    new-instance v1, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v2, "Can\'t find class for visit path: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 129
    :cond_3
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v0, "Can\'t bind an edit property without a target class"

    invoke-direct {p1, v0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 156
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_9

    .line 160
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "view_id_name"

    .line 163
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "anchor_id_name"

    .line 164
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 165
    iget-object v10, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback:Lo/getAppSettingsData;

    const/4 v11, -0x1

    invoke-static {v11, v8, v10}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(ILjava/lang/String;Lo/getAppSettingsData;)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "0"

    .line 167
    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_3

    :cond_5
    const-string v12, "-1"

    .line 169
    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 170
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_3

    .line 172
    :cond_6
    iget-object v12, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback:Lo/getAppSettingsData;

    invoke-static {v11, v9, v12}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(ILjava/lang/String;Lo/getAppSettingsData;)Ljava/lang/Integer;

    move-result-object v11

    :goto_3
    if-eqz v10, :cond_8

    if-nez v11, :cond_7

    goto :goto_4

    .line 180
    :cond_7
    new-instance v8, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v9

    const-string v10, "verb"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-direct {v8, v9, v7, v10}, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;-><init>(III)V

    .line 181
    invoke-virtual {v1, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_4
    const-string v7, "MixpanelAPI.EProtocol"

    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "View ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") or anchor ("

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") not found."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 183
    :cond_9
    new-instance v0, Lo/FirebaseCrashlyticsNdk$onTransact;

    const-string v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->extraCallback:Lo/FirebaseCrashlyticsNdk$asBinder;

    invoke-direct {v0, v3, v1, p1, v4}, Lo/FirebaseCrashlyticsNdk$onTransact;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$asBinder;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v0

    .line 193
    :goto_6
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;

    invoke-direct {p1, v1, v2, v6}, Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;-><init>(Lo/FirebaseCrashlyticsNdk;Ljava/util/List;B)V

    return-object p1

    .line 185
    :cond_a
    :try_start_4
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v0, "Can\'t figure out the edit type"

    invoke-direct {p1, v0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_b
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException;

    const-string v0, "Edit will not be bound to any element in the UI."

    invoke-direct {p1, v0}, Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 190
    new-instance v0, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v1, "Can\'t interpret instructions due to JSONException"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 188
    new-instance v0, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v1, "Can\'t create property mutator"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onPostMessage(Lorg/json/JSONObject;)Lo/hasSessionFileDirectory;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "config"

    .line 200
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "classes"

    .line 201
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 202
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 203
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    .line 204
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "properties"

    .line 207
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    .line 208
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 209
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 210
    invoke-static {v4, v6}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(Ljava/lang/Class;Lorg/json/JSONObject;)Lo/getAuthTokenProvider$1;

    move-result-object v6

    .line 211
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_1
    new-instance p1, Lo/hasSessionFileDirectory;

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onMessageChannelReady:Landroid/content/Context;

    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback:Lo/getAppSettingsData;

    invoke-direct {p1, v1, v0, v2}, Lo/hasSessionFileDirectory;-><init>(Landroid/content/Context;Ljava/util/List;Lo/getAppSettingsData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 219
    new-instance v0, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v1, "Can\'t resolve types for snapshot configuration"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 217
    new-instance v0, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;

    const-string v1, "Can\'t read snapshot configuration"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
