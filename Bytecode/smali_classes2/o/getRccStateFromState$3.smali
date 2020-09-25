.class final Lo/getRccStateFromState$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getRccStateFromState;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getRccStateFromState;

.field final synthetic onPostMessage:Landroidx/preference/PreferenceGroup$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/getRccStateFromState;Landroidx/preference/PreferenceGroup$onMessageChannelReady;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lo/getRccStateFromState$3;->ICustomTabsCallback:Lo/getRccStateFromState;

    iput-object p2, p0, Lo/getRccStateFromState$3;->onPostMessage:Landroidx/preference/PreferenceGroup$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 165
    iget-object p1, p0, Lo/getRccStateFromState$3;->onPostMessage:Landroidx/preference/PreferenceGroup$onMessageChannelReady;

    new-instance v0, Lo/IPostMessageService$onNavigationEvent;

    invoke-direct {v0, p4}, Lo/IPostMessageService$onNavigationEvent;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Landroidx/preference/PreferenceGroup$onMessageChannelReady;->onNavigationEvent(Lo/sendSessionDestroyed;)V

    .line 166
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method
