.class public abstract Lo/setOnSearchClickListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setOnQueryTextListener;


# instance fields
.field onMessageChannelReady:Lo/setOnQueryTextFocusChangeListener;

.field onNavigationEvent:Lo/setOnCloseListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/getSuggestionsAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/setOnSearchClickListener;->onNavigationEvent:Lo/setOnCloseListener;

    invoke-virtual {v0}, Lo/setOnCloseListener;->onPostMessage()Lo/getSuggestionsAdapter;

    move-result-object v0

    return-object v0
.end method
