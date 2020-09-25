.class public final Lo/animateRemove$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateRemove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/currency/CredCurrencyAdapter$Companion;",
        "",
        "()V",
        "CATEGORY_HEADER",
        "",
        "CONTROL_SECTION",
        "CRED_CURRENCY_FILTER_HEADER",
        "CRED_CURRENCY_ITEM",
        "CRED_CURRENCY_NO_HISTORY",
        "CRED_CURRENCY_PENDING_REFERRAL_ITEM",
        "CRED_CURRENCY_PENDING_REFERRAL_PEOPLE_ITEM",
        "CRED_CURRENCY_PENDING_REFERRAL_VIEW_ALL_ITEM",
        "CRED_CURRENCY_RECOMMENDED_REWARD",
        "CRED_CURRENCY_REFERRED_ITEM",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/Foreground$4$4;

.field private final extraCallback:Lo/ak;

.field private final onPostMessage:Lo/OaidClient$Info;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ak;Lo/OaidClient$Info;Lo/Foreground$4$4;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/animateRemove$extraCallback;->extraCallback:Lo/ak;

    iput-object p2, p0, Lo/animateRemove$extraCallback;->onPostMessage:Lo/OaidClient$Info;

    iput-object p3, p0, Lo/animateRemove$extraCallback;->ICustomTabsCallback:Lo/Foreground$4$4;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 2000
    iget-object v0, p0, Lo/animateRemove$extraCallback;->extraCallback:Lo/ak;

    iget-object v1, p0, Lo/animateRemove$extraCallback;->onPostMessage:Lo/OaidClient$Info;

    iget-object v2, p0, Lo/animateRemove$extraCallback;->ICustomTabsCallback:Lo/Foreground$4$4;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 3082
    iget-object v3, v0, Lo/ak;->onNavigationEvent:Lo/am;

    .line 4000
    new-instance v4, Lo/PreferenceGroup$extraCallback;

    invoke-direct {v4, v3}, Lo/PreferenceGroup$extraCallback;-><init>(Lo/am;)V

    .line 5000
    sget-object v3, Lo/shouldIgnore$ICustomTabsCallback;->ICustomTabsCallback:Lo/shouldIgnore$ICustomTabsCallback;

    .line 3082
    invoke-virtual {v0, v4, v3}, Lo/ak;->onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "PRAGMA page_count"

    .line 2603
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v3

    .line 6082
    iget-object v5, v0, Lo/ak;->onNavigationEvent:Lo/am;

    .line 7000
    new-instance v6, Lo/PreferenceGroup$extraCallback;

    invoke-direct {v6, v5}, Lo/PreferenceGroup$extraCallback;-><init>(Lo/am;)V

    .line 8000
    sget-object v5, Lo/shouldIgnore$ICustomTabsCallback;->ICustomTabsCallback:Lo/shouldIgnore$ICustomTabsCallback;

    .line 6082
    invoke-virtual {v0, v6, v5}, Lo/ak;->onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "PRAGMA page_size"

    .line 5595
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v5

    mul-long v3, v3, v5

    .line 2585
    iget-object v5, v0, Lo/ak;->ICustomTabsCallback:Lo/aj;

    invoke-virtual {v5}, Lo/aj;->onMessageChannelReady()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 8167
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    cmp-long v10, v3, v5

    if-ltz v10, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const-wide/16 v0, -0x1

    .line 2105
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 8159
    :cond_1
    invoke-static {p1, v1}, Lo/ak;->extraCallback(Landroid/database/sqlite/SQLiteDatabase;Lo/OaidClient$Info;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 8161
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    goto :goto_1

    .line 8164
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 8165
    invoke-virtual {v1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v5

    const-string v6, "backend_name"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8166
    invoke-virtual {v1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v5

    invoke-static {v5}, Lo/getItemDelegate$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferrer;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "priority"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "next_request_ms"

    .line 8167
    invoke-virtual {v3, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8168
    invoke-virtual {v1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v5

    if-eqz v5, :cond_3

    .line 8169
    invoke-virtual {v1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v1

    invoke-static {v1, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v5, "extras"

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "transport_contexts"

    .line 8172
    invoke-virtual {p1, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2109
    :goto_1
    iget-object v0, v0, Lo/ak;->ICustomTabsCallback:Lo/aj;

    invoke-virtual {v0}, Lo/aj;->extraCallback()I

    move-result v0

    .line 2111
    invoke-virtual {v2}, Lo/Foreground$4$4;->ICustomTabsCallback()Lo/Foreground$Listener;

    move-result-object v1

    .line 9049
    iget-object v1, v1, Lo/Foreground$Listener;->ICustomTabsCallback:[B

    .line 2112
    array-length v3, v1

    if-gt v3, v0, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 2113
    :goto_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2114
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "context_id"

    invoke-virtual {v10, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2115
    invoke-virtual {v2}, Lo/Foreground$4$4;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v5

    const-string v6, "transport_name"

    invoke-virtual {v10, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    invoke-virtual {v2}, Lo/Foreground$4$4;->extraCallback()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "timestamp_ms"

    invoke-virtual {v10, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2117
    invoke-virtual {v2}, Lo/Foreground$4$4;->onNavigationEvent()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "uptime_ms"

    invoke-virtual {v10, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2118
    invoke-virtual {v2}, Lo/Foreground$4$4;->ICustomTabsCallback()Lo/Foreground$Listener;

    move-result-object v5

    .line 10045
    iget-object v5, v5, Lo/Foreground$Listener;->extraCallback:Lo/isEnableLog;

    .line 11034
    iget-object v5, v5, Lo/isEnableLog;->onNavigationEvent:Ljava/lang/String;

    const-string v6, "payload_encoding"

    .line 2118
    invoke-virtual {v10, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    invoke-virtual {v2}, Lo/Foreground$4$4;->onPostMessage()Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {v10, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "num_attempts"

    .line 2120
    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2121
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "inline"

    invoke-virtual {v10, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v3, :cond_5

    move-object v5, v1

    goto :goto_3

    :cond_5
    new-array v5, v8, [B

    :goto_3
    const-string v6, "payload"

    .line 2122
    invoke-virtual {v10, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "events"

    .line 2123
    invoke-virtual {p1, v5, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-string v8, "event_id"

    if-nez v3, :cond_6

    .line 2125
    array-length v3, v1

    int-to-double v9, v3

    int-to-double v11, v0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    :goto_4
    if-gt v7, v3, :cond_6

    add-int/lit8 v9, v7, -0x1

    mul-int v9, v9, v0

    mul-int v10, v7, v0

    .line 2128
    array-length v11, v1

    .line 2132
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2129
    invoke-static {v1, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2133
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2134
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2135
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "sequence_num"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "bytes"

    .line 2136
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v9, "event_payloads"

    .line 2137
    invoke-virtual {p1, v9, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2142
    :cond_6
    invoke-virtual {v2}, Lo/Foreground$4$4;->ICustomTabsCallback$Stub()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2143
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2144
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "name"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "value"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_metadata"

    .line 2147
    invoke-virtual {p1, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_5

    .line 2149
    :cond_7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
