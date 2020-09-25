.class public final Lo/am;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/am$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub:Lo/am$onMessageChannelReady;

.field private static final asInterface:Lo/am$onMessageChannelReady;

.field private static final onMessageChannelReady:Lo/am$onMessageChannelReady;

.field public static onNavigationEvent:I = 0x4

.field private static final onPostMessage:Lo/am$onMessageChannelReady;

.field private static final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/am$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:I

.field private extraCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6000
    sget-object v0, Lo/onEnteredHiddenState$extraCallback;->onNavigationEvent:Lo/onEnteredHiddenState$extraCallback;

    .line 88
    sput-object v0, Lo/am;->onMessageChannelReady:Lo/am$onMessageChannelReady;

    .line 7000
    sget-object v0, Lo/onEnteredHiddenState$onNavigationEvent;->extraCallback:Lo/onEnteredHiddenState$onNavigationEvent;

    .line 97
    sput-object v0, Lo/am;->onPostMessage:Lo/am$onMessageChannelReady;

    .line 8000
    sget-object v0, Lo/onEnteredHiddenState$ICustomTabsCallback;->ICustomTabsCallback:Lo/onEnteredHiddenState$ICustomTabsCallback;

    .line 105
    sput-object v0, Lo/am;->asInterface:Lo/am$onMessageChannelReady;

    .line 9000
    sget-object v0, Lo/getItemDelegate;->onMessageChannelReady:Lo/getItemDelegate;

    .line 107
    sput-object v0, Lo/am;->ICustomTabsCallback$Stub:Lo/am$onMessageChannelReady;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/am$onMessageChannelReady;

    .line 114
    sget-object v2, Lo/am;->onMessageChannelReady:Lo/am$onMessageChannelReady;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/am;->onPostMessage:Lo/am$onMessageChannelReady;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lo/am;->asInterface:Lo/am$onMessageChannelReady;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 115
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/am;->onTransact:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/currentString;
            extraCallback = "SQLITE_DB_NAME"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/currentString;
            extraCallback = "SCHEMA_VERSION"
        .end annotation
    .end param
    .annotation runtime Lo/withJitterFactor;
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lo/am;->extraCallback:Z

    .line 123
    iput p3, p0, Lo/am;->ICustomTabsCallback:I

    return-void
.end method

.method private static onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 178
    sget-object v0, Lo/am;->onTransact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 189
    sget-object v0, Lo/am;->onTransact:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/am$onMessageChannelReady;

    invoke-interface {v0, p0}, Lo/am$onMessageChannelReady;->ICustomTabsCallback(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 179
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migration from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was requested, but cannot be performed. Only "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lo/am;->onTransact:Ljava/util/List;

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " migrations are provided"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lo/am;->extraCallback:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PRAGMA busy_timeout=0;"

    .line 132
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 135
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 147
    iget v0, p0, Lo/am;->ICustomTabsCallback:I

    .line 2140
    iget-boolean v1, p0, Lo/am;->extraCallback:Z

    if-nez v1, :cond_0

    .line 2141
    invoke-virtual {p0, p1}, Lo/am;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v1, 0x0

    .line 1152
    invoke-static {p1, v1, v0}, Lo/am;->onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE events"

    .line 163
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE event_metadata"

    .line 164
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE transport_contexts"

    .line 165
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS event_payloads"

    .line 166
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4140
    iget-boolean p2, p0, Lo/am;->extraCallback:Z

    if-nez p2, :cond_0

    .line 4141
    invoke-virtual {p0, p1}, Lo/am;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 p2, 0x0

    .line 3152
    invoke-static {p1, p2, p3}, Lo/am;->onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 5140
    iget-boolean v0, p0, Lo/am;->extraCallback:Z

    if-nez v0, :cond_0

    .line 5141
    invoke-virtual {p0, p1}, Lo/am;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 3140
    iget-boolean v0, p0, Lo/am;->extraCallback:Z

    if-nez v0, :cond_0

    .line 3141
    invoke-virtual {p0, p1}, Lo/am;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 158
    :cond_0
    invoke-static {p1, p2, p3}, Lo/am;->onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
