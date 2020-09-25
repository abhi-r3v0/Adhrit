.class public final Lo/setQuery;
.super Lo/setOnSearchClickListener;
.source ""


# instance fields
.field private extraCallback:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lo/setOnSearchClickListener;-><init>()V

    .line 6
    iput p1, p0, Lo/setQuery;->extraCallback:I

    .line 1012
    new-instance p1, Lo/getQuery;

    sget-object v0, Lo/setOnCloseListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setOnCloseListener$onMessageChannelReady;

    iget v1, p0, Lo/setQuery;->extraCallback:I

    invoke-direct {p1, v0, v1}, Lo/getQuery;-><init>(Lo/setOnCloseListener$onMessageChannelReady;I)V

    iput-object p1, p0, Lo/setOnSearchClickListener;->onNavigationEvent:Lo/setOnCloseListener;

    .line 1013
    new-instance p1, Lo/setOnQueryTextFocusChangeListener;

    invoke-direct {p1}, Lo/setOnQueryTextFocusChangeListener;-><init>()V

    iput-object p1, p0, Lo/setOnSearchClickListener;->onMessageChannelReady:Lo/setOnQueryTextFocusChangeListener;

    return-void
.end method
