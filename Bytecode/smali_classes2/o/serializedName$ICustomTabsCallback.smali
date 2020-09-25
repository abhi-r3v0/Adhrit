.class public final Lo/serializedName$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializedName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final extraCallback:Lo/shouldIncludeField;

.field final onNavigationEvent:Lo/isCompleteForPath;


# direct methods
.method private constructor <init>(Lo/shouldIncludeField;Lo/isCompleteForPath;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lo/serializedName$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField;

    .line 271
    iput-object p2, p0, Lo/serializedName$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForPath;

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/isCompleteForPath;)Lo/serializedName$ICustomTabsCallback;
    .locals 2

    if-eqz p0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {v0, p0}, Lo/serializedName;->ICustomTabsCallback(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    .line 255
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {v0, p1}, Lo/serializedName;->ICustomTabsCallback(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    new-instance p0, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {p0}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    move-result-object p0

    .line 1401
    new-instance p1, Lo/shouldIncludeField;

    invoke-direct {p1, p0}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    .line 263
    invoke-static {p1, p2}, Lo/serializedName$ICustomTabsCallback;->onPostMessage(Lo/shouldIncludeField;Lo/isCompleteForPath;)Lo/serializedName$ICustomTabsCallback;

    move-result-object p0

    return-object p0

    .line 249
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/serializedName$ICustomTabsCallback;
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-static {v0, p1}, Lo/isCompleteForPath;->extraCallback(Lo/isFiltered;Ljava/lang/String;)Lo/isCompleteForPath;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lo/serializedName$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/isCompleteForPath;)Lo/serializedName$ICustomTabsCallback;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Lo/shouldIncludeField;Lo/isCompleteForPath;)Lo/serializedName$ICustomTabsCallback;
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    .line 234
    invoke-virtual {p0, v0}, Lo/shouldIncludeField;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    .line 237
    invoke-virtual {p0, v0}, Lo/shouldIncludeField;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 238
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_3
    :goto_1
    new-instance v0, Lo/serializedName$ICustomTabsCallback;

    invoke-direct {v0, p0, p1}, Lo/serializedName$ICustomTabsCallback;-><init>(Lo/shouldIncludeField;Lo/isCompleteForPath;)V

    return-object v0

    .line 232
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
