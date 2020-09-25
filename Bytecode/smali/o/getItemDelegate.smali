.class public final Lo/getItemDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Lo/am$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getItemDelegate$onPostMessage;,
        Lo/getItemDelegate$ICustomTabsCallback;,
        Lo/getItemDelegate$onMessageChannelReady;,
        Lo/getItemDelegate$onNavigationEvent;,
        Lo/getItemDelegate$extraCallback;,
        Lo/getItemDelegate$asBinder;,
        Lo/getItemDelegate$ICustomTabsCallback$Stub;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getItemDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/getItemDelegate;

    invoke-direct {v0}, Lo/getItemDelegate;-><init>()V

    sput-object v0, Lo/getItemDelegate;->onMessageChannelReady:Lo/getItemDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1"

    .line 2109
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS event_payloads"

    .line 2110
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))"

    .line 2111
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
