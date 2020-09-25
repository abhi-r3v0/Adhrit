.class final Lo/sendState;
.super Lo/IPostMessageService$onNavigationEvent;
.source ""

# interfaces
.implements Lo/getDrawerToggleDelegate$onNavigationEvent;


# instance fields
.field private final extraCallback:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/IPostMessageService$onNavigationEvent;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 36
    iput-object p1, p0, Lo/sendState;->extraCallback:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()J
    .locals 2

    .line 51
    iget-object v0, p0, Lo/sendState;->extraCallback:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 46
    iget-object v0, p0, Lo/sendState;->extraCallback:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method
