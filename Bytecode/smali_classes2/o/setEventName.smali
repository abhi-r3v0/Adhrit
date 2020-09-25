.class final Lo/setEventName;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ConversationOptions;


# instance fields
.field private final synthetic extraCallback:Lo/setTopInset;


# direct methods
.method constructor <init>(Lo/setTopInset;)V
    .locals 0

    iput-object p1, p0, Lo/setEventName;->extraCallback:Lo/setTopInset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)B
    .locals 1

    iget-object v0, p0, Lo/setEventName;->extraCallback:Lo/setTopInset;

    invoke-virtual {v0, p1}, Lo/setTopInset;->onPostMessage(I)B

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback()I
    .locals 1

    iget-object v0, p0, Lo/setEventName;->extraCallback:Lo/setTopInset;

    invoke-virtual {v0}, Lo/setTopInset;->onPostMessage()I

    move-result v0

    return v0
.end method
