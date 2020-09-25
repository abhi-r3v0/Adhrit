.class final synthetic Lo/EntryJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Lo/ClickReference$$Parcelable;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Z

.field private final onPostMessage:Z


# direct methods
.method constructor <init>(Lo/ClickReference$$Parcelable;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/EntryJsonAdapter;->extraCallback:Lo/ClickReference$$Parcelable;

    iput p2, p0, Lo/EntryJsonAdapter;->ICustomTabsCallback:I

    iput p3, p0, Lo/EntryJsonAdapter;->onMessageChannelReady:I

    iput-boolean p4, p0, Lo/EntryJsonAdapter;->onPostMessage:Z

    iput-boolean p5, p0, Lo/EntryJsonAdapter;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lo/EntryJsonAdapter;->extraCallback:Lo/ClickReference$$Parcelable;

    iget v1, p0, Lo/EntryJsonAdapter;->ICustomTabsCallback:I

    iget v2, p0, Lo/EntryJsonAdapter;->onMessageChannelReady:I

    iget-boolean v3, p0, Lo/EntryJsonAdapter;->onPostMessage:Z

    iget-boolean v4, p0, Lo/EntryJsonAdapter;->onNavigationEvent:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/ClickReference$$Parcelable;->ICustomTabsCallback(IIZZ)V

    return-void
.end method
