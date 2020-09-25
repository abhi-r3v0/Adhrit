.class public final Lo/SwitchPreferenceCompat$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SwitchPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/InstrumentListAdapter$Companion;",
        "",
        "()V",
        "LIST_ITEM",
        "",
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
.field private final ICustomTabsCallback:Lo/OaidClient$Info;

.field private final onPostMessage:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLo/OaidClient$Info;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo/SwitchPreferenceCompat$onMessageChannelReady;->onPostMessage:J

    iput-object p3, p0, Lo/SwitchPreferenceCompat$onMessageChannelReady;->ICustomTabsCallback:Lo/OaidClient$Info;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2000
    iget-wide v0, p0, Lo/SwitchPreferenceCompat$onMessageChannelReady;->onPostMessage:J

    iget-object v2, p0, Lo/SwitchPreferenceCompat$onMessageChannelReady;->ICustomTabsCallback:Lo/OaidClient$Info;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2284
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2285
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "next_request_ms"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2292
    invoke-virtual {v2}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 2293
    invoke-virtual {v2}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v1

    invoke-static {v1}, Lo/getItemDelegate$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferrer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "transport_contexts"

    const-string v4, "backend_name = ? and priority = ?"

    .line 2287
    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    if-gtz v0, :cond_0

    .line 2297
    invoke-virtual {v2}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v0

    const-string v5, "backend_name"

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v2}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v0

    invoke-static {v0}, Lo/getItemDelegate$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferrer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "priority"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2299
    invoke-virtual {p1, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v4
.end method
