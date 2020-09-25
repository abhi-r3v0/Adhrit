.class public Lcom/freshchat/consumer/sdk/beans/Message;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    }
.end annotation


# static fields
.field public static final DO_NOT_DISPLAY:I = -0x1

.field public static final MESSAGE_READ:I = 0x1

.field public static final MESSAGE_UNREAD:I = 0x0

.field public static final SOURCE_MOBILE:I = 0x2

.field public static final UPLOAD_STATE_PENDING:I = 0x0

.field public static final UPLOAD_STATE_UPLOADED:I = 0x1


# instance fields
.field private alias:Ljava/lang/String;

.field private channelId:J

.field private conversationId:J

.field private createdMillis:J

.field private marketingId:J

.field private messageFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private messageUserAlias:Ljava/lang/String;

.field private messageUserType:I

.field private read:Z
    .annotation runtime Lo/computeStringSize;
        extraCallback = "readByUser"
    .end annotation
.end field

.field private source:I

.field private transient uploadState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    return-void
.end method

.method static synthetic access$002(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/freshchat/consumer/sdk/beans/Message;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/freshchat/consumer/sdk/beans/Message;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/freshchat/consumer/sdk/beans/Message;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/freshchat/consumer/sdk/beans/Message;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    return p1
.end method

.method static synthetic access$502(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/freshchat/consumer/sdk/beans/Message;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    return p1
.end method

.method static synthetic access$702(Lcom/freshchat/consumer/sdk/beans/Message;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    return p1
.end method

.method static synthetic access$802(Lcom/freshchat/consumer/sdk/beans/Message;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/freshchat/consumer/sdk/beans/Message;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    return p1
.end method


# virtual methods
.method public addMessageFragment(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v2

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    iget-wide v5, p1, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    iget-wide v5, p1, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    iget-wide v5, p1, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    iget v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    iget v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    iget-boolean v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    iget-wide v5, p1, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    iget v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    iget-object v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    iget-object v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    return-wide v0
.end method

.method public getConversationId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    return-wide v0
.end method

.method public getCreatedMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    return-wide v0
.end method

.method public getMarketingId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    return-wide v0
.end method

.method public getMessageFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    return-object v0
.end method

.method public getMessageUserAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageUserType()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v10

    sget-object v11, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v11

    if-ne v10, v11, :cond_1

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x64

    invoke-static {v2, v9}, Lcom/freshchat/consumer/sdk/j/as;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v10

    sget-object v11, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v11

    if-ne v10, v11, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v10

    sget-object v11, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v11

    if-ne v10, v11, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v10

    sget-object v11, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->VIDEO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v11

    if-ne v10, v11, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v10

    sget-object v11, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v11

    if-ne v10, v11, :cond_5

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    check-cast v9, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x28

    invoke-static {v4, v9}, Lcom/freshchat/consumer/sdk/j/as;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    invoke-virtual {v9}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v9

    invoke-static {v9}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->fromInt(I)Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&#128247; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-eqz v6, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&#127908; Voice Message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-eqz v7, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&#127909; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v8, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&#10071;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    return-object v1
.end method

.method public getShareableStr()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v3

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v3

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v3

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v3

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->VIDEO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadState()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    return v0
.end method

.method public isAgentMessage()Z
    .locals 3

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    return v0
.end method

.method public isUploaded()Z
    .locals 2

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUserMessage()Z
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    return-void
.end method

.method public setConversationId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    return-void
.end method

.method public setCreatedMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    return-void
.end method

.method public setMarketingId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    return-void
.end method

.method public setMessageFragments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public setMessageUserAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    return-void
.end method

.method public setMessageUserType(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    return-void
.end method

.method public setRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    return-void
.end method

.method public setUploadState(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "alias=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", marketingId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", channelId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", conversationId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", messageUserType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", messageUserAlias=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", createdMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploadState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageFragments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
