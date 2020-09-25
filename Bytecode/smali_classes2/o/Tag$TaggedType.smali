.class final Lo/Tag$TaggedType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getTaggedItemType;


# instance fields
.field private final synthetic onPostMessage:Lo/setMandatory;


# direct methods
.method constructor <init>(Lo/setMandatory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Tag$TaggedType;->onPostMessage:Lo/setMandatory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)B
    .locals 1

    .line 3
    iget-object v0, p0, Lo/Tag$TaggedType;->onPostMessage:Lo/setMandatory;

    invoke-virtual {v0, p1}, Lo/setMandatory;->onMessageChannelReady(I)B

    move-result p1

    return p1
.end method

.method public final extraCallback()I
    .locals 1

    .line 2
    iget-object v0, p0, Lo/Tag$TaggedType;->onPostMessage:Lo/setMandatory;

    invoke-virtual {v0}, Lo/setMandatory;->onPostMessage()I

    move-result v0

    return v0
.end method
