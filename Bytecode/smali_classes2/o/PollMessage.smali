.class final Lo/PollMessage;
.super Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:I

.field private final ICustomTabsCallback$Stub$Proxy:I

.field private final ICustomTabsService:I

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:I

.field private INotificationSideChannel:I

.field private IPostMessageService:I

.field private IPostMessageService$Stub:I

.field private IPostMessageService$Stub$Proxy:Ljava/lang/Object;

.field private final asBinder:I

.field private final asInterface:I

.field private cancel:I

.field private cancelAll:Ljava/lang/reflect/Field;

.field private final extraCallback:I

.field private extraCommand:I

.field private getDefaultImpl:Ljava/lang/Object;

.field private final getInterfaceDescriptor:[I

.field private mayLaunchUrl:I

.field private final newSession:I

.field private notify:I

.field private final onMessageChannelReady:Lo/PitchJsonAdapter;

.field private onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final onPostMessage:[Ljava/lang/Object;

.field private final onRelationshipValidationResult:I

.field private final onTransact:I

.field private postMessage:I

.field private requestPostMessageChannel:I

.field private setDefaultImpl:Ljava/lang/Object;

.field private updateVisuals:I

.field private validateRelationship:I

.field private warmup:I


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lo/PollMessage;->updateVisuals:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lo/PollMessage;->mayLaunchUrl:I

    const/4 v0, 0x0

    iput v0, p0, Lo/PollMessage;->requestPostMessageChannel:I

    iput v0, p0, Lo/PollMessage;->extraCommand:I

    iput v0, p0, Lo/PollMessage;->IPostMessageService$Stub:I

    iput v0, p0, Lo/PollMessage;->IPostMessageService:I

    iput v0, p0, Lo/PollMessage;->ICustomTabsService$Stub$Proxy:I

    iput-object p1, p0, Lo/PollMessage;->onNavigationEvent:Ljava/lang/Class;

    new-instance p1, Lo/PitchJsonAdapter;

    invoke-direct {p1, p2}, Lo/PitchJsonAdapter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    iput-object p3, p0, Lo/PollMessage;->onPostMessage:[Ljava/lang/Object;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->ICustomTabsCallback:I

    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->extraCallback:I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Lo/PollMessage;->asBinder:I

    iput v0, p0, Lo/PollMessage;->ICustomTabsCallback$Stub:I

    iput v0, p0, Lo/PollMessage;->onTransact:I

    iput v0, p0, Lo/PollMessage;->asInterface:I

    iput v0, p0, Lo/PollMessage;->onRelationshipValidationResult:I

    iput v0, p0, Lo/PollMessage;->newSession:I

    iput v0, p0, Lo/PollMessage;->ICustomTabsCallback$Stub$Proxy:I

    iput v0, p0, Lo/PollMessage;->ICustomTabsService:I

    iput-object p2, p0, Lo/PollMessage;->getInterfaceDescriptor:[I

    return-void

    :cond_0
    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->asBinder:I

    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->ICustomTabsCallback$Stub:I

    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->onTransact:I

    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->asInterface:I

    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->newSession:I

    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->ICustomTabsCallback$Stub$Proxy:I

    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->onRelationshipValidationResult:I

    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/PollMessage;->ICustomTabsService:I

    iget-object p1, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {p1}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p2, p1, [I

    :goto_0
    iput-object p2, p0, Lo/PollMessage;->getInterfaceDescriptor:[I

    iget p1, p0, Lo/PollMessage;->asBinder:I

    shl-int/lit8 p1, p1, 0x1

    iget p2, p0, Lo/PollMessage;->ICustomTabsCallback$Stub:I

    add-int/2addr p1, p2

    iput p1, p0, Lo/PollMessage;->warmup:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/PollMessage;)I
    .locals 0

    iget p0, p0, Lo/PollMessage;->extraCallback:I

    return p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/PollMessage;)I
    .locals 0

    iget p0, p0, Lo/PollMessage;->ICustomTabsService:I

    return p0
.end method

.method static synthetic asBinder(Lo/PollMessage;)I
    .locals 0

    iget p0, p0, Lo/PollMessage;->ICustomTabsCallback$Stub$Proxy:I

    return p0
.end method

.method static synthetic extraCallback(Lo/PollMessage;)I
    .locals 0

    iget p0, p0, Lo/PollMessage;->ICustomTabsCallback:I

    return p0
.end method

.method private static extraCallback(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final mayLaunchUrl()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo/PollMessage;->onPostMessage:[Ljava/lang/Object;

    iget v1, p0, Lo/PollMessage;->warmup:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/PollMessage;->warmup:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/PollMessage;)I
    .locals 0

    iget p0, p0, Lo/PollMessage;->onTransact:I

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/PollMessage;)I
    .locals 0

    iget p0, p0, Lo/PollMessage;->asInterface:I

    return p0
.end method

.method static synthetic onPostMessage(Lo/PollMessage;)I
    .locals 0

    iget p0, p0, Lo/PollMessage;->onRelationshipValidationResult:I

    return p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/PollMessage;)I
    .locals 0

    iget p0, p0, Lo/PollMessage;->newSession:I

    return p0
.end method

.method static synthetic onTransact(Lo/PollMessage;)[I
    .locals 0

    iget-object p0, p0, Lo/PollMessage;->getInterfaceDescriptor:[I

    return-object p0
.end method

.method private final updateVisuals()Z
    .locals 2

    iget v0, p0, Lo/PollMessage;->ICustomTabsCallback:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final ICustomTabsCallback()Z
    .locals 5

    iget-object v0, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {v0}, Lo/PitchJsonAdapter;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {v0}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/PollMessage;->ICustomTabsService$Stub:I

    iget-object v0, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {v0}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/PollMessage;->validateRelationship:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    iget v0, p0, Lo/PollMessage;->ICustomTabsService$Stub:I

    iget v2, p0, Lo/PollMessage;->updateVisuals:I

    if-ge v0, v2, :cond_1

    iput v0, p0, Lo/PollMessage;->updateVisuals:I

    :cond_1
    iget v0, p0, Lo/PollMessage;->ICustomTabsService$Stub:I

    iget v2, p0, Lo/PollMessage;->mayLaunchUrl:I

    if-le v0, v2, :cond_2

    iput v0, p0, Lo/PollMessage;->mayLaunchUrl:I

    :cond_2
    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lo/PollMessage;->requestPostMessageChannel:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/PollMessage;->requestPostMessageChannel:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-lt v0, v2, :cond_4

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-gt v0, v2, :cond_4

    iget v0, p0, Lo/PollMessage;->extraCommand:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/PollMessage;->extraCommand:I

    :cond_4
    :goto_0
    iget v0, p0, Lo/PollMessage;->ICustomTabsService$Stub$Proxy:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/PollMessage;->ICustomTabsService$Stub$Proxy:I

    iget v2, p0, Lo/PollMessage;->updateVisuals:I

    iget v4, p0, Lo/PollMessage;->ICustomTabsService$Stub:I

    invoke-static {v2, v4, v0}, Lo/PossibleValues;->extraCallback(III)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lo/PollMessage;->ICustomTabsService$Stub:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/PollMessage;->IPostMessageService:I

    iget v2, p0, Lo/PollMessage;->updateVisuals:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_5
    iget v0, p0, Lo/PollMessage;->IPostMessageService$Stub:I

    add-int/2addr v0, v3

    :goto_1
    iput v0, p0, Lo/PollMessage;->IPostMessageService$Stub:I

    iget v0, p0, Lo/PollMessage;->validateRelationship:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/PollMessage;->getInterfaceDescriptor:[I

    iget v2, p0, Lo/PollMessage;->postMessage:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lo/PollMessage;->postMessage:I

    iget v4, p0, Lo/PollMessage;->ICustomTabsService$Stub:I

    aput v4, v0, v2

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lo/PollMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/Object;

    iput-object v0, p0, Lo/PollMessage;->setDefaultImpl:Ljava/lang/Object;

    iput-object v0, p0, Lo/PollMessage;->getDefaultImpl:Ljava/lang/Object;

    invoke-virtual {p0}, Lo/PollMessage;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {v0}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/PollMessage;->notify:I

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v1, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v1}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-eq v0, v1, :cond_9

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v1, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v1}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v1, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v1}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lo/PollMessage;->updateVisuals()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_3
    invoke-direct {p0}, Lo/PollMessage;->mayLaunchUrl()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/PollMessage;->setDefaultImpl:Ljava/lang/Object;

    goto/16 :goto_9

    :cond_9
    :goto_4
    invoke-direct {p0}, Lo/PollMessage;->mayLaunchUrl()Ljava/lang/Object;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lo/PollMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/Object;

    goto/16 :goto_9

    :cond_a
    iget-object v0, p0, Lo/PollMessage;->onNavigationEvent:Ljava/lang/Class;

    invoke-direct {p0}, Lo/PollMessage;->mayLaunchUrl()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lo/PollMessage;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lo/PollMessage;->cancelAll:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lo/PollMessage;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lo/PollMessage;->onMessageChannelReady:Lo/PitchJsonAdapter;

    invoke-virtual {v0}, Lo/PitchJsonAdapter;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/PollMessage;->cancel:I

    :cond_b
    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-eq v0, v2, :cond_11

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-ne v0, v2, :cond_c

    goto :goto_8

    :cond_c
    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-eq v0, v2, :cond_9

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-ne v0, v2, :cond_d

    goto :goto_4

    :cond_d
    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-eq v0, v2, :cond_10

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onRelationshipValidationResult:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-eq v0, v2, :cond_10

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onTransact:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-ne v0, v2, :cond_e

    goto :goto_6

    :cond_e
    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v2

    if-ne v0, v2, :cond_12

    invoke-direct {p0}, Lo/PollMessage;->mayLaunchUrl()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/PollMessage;->getDefaultImpl:Ljava/lang/Object;

    iget v0, p0, Lo/PollMessage;->validateRelationship:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    if-eqz v1, :cond_12

    goto :goto_7

    :cond_10
    :goto_6
    invoke-direct {p0}, Lo/PollMessage;->updateVisuals()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_7
    goto/16 :goto_3

    :cond_11
    :goto_8
    iget-object v0, p0, Lo/PollMessage;->cancelAll:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_5

    :cond_12
    :goto_9
    return v3
.end method

.method final ICustomTabsCallback$Stub()Ljava/lang/reflect/Field;
    .locals 3

    iget v0, p0, Lo/PollMessage;->notify:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lo/PollMessage;->onPostMessage:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_0
    iget-object v2, p0, Lo/PollMessage;->onNavigationEvent:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lo/PollMessage;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lo/PollMessage;->onPostMessage:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method final ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/PollMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/Object;

    return-object v0
.end method

.method final ICustomTabsService()Z
    .locals 1

    iget v0, p0, Lo/PollMessage;->validateRelationship:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final asBinder()I
    .locals 1

    iget v0, p0, Lo/PollMessage;->cancel:I

    rem-int/lit8 v0, v0, 0x20

    return v0
.end method

.method final asInterface()Z
    .locals 2

    invoke-direct {p0}, Lo/PollMessage;->updateVisuals()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v1, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v1}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final extraCallback()I
    .locals 1

    iget v0, p0, Lo/PollMessage;->ICustomTabsService$Stub:I

    return v0
.end method

.method final getInterfaceDescriptor()Z
    .locals 1

    iget v0, p0, Lo/PollMessage;->validateRelationship:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final newSession()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/PollMessage;->getDefaultImpl:Ljava/lang/Object;

    return-object v0
.end method

.method final onMessageChannelReady()Z
    .locals 2

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    sget-object v1, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v1}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final onNavigationEvent()Ljava/lang/reflect/Field;
    .locals 3

    iget v0, p0, Lo/PollMessage;->notify:I

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lo/PollMessage;->onPostMessage:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_0
    iget-object v2, p0, Lo/PollMessage;->onNavigationEvent:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lo/PollMessage;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lo/PollMessage;->onPostMessage:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/PollMessage;->INotificationSideChannel:I

    return v0
.end method

.method final onRelationshipValidationResult()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lo/PollMessage;->cancelAll:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method final onTransact()Ljava/lang/reflect/Field;
    .locals 3

    iget v0, p0, Lo/PollMessage;->asBinder:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lo/PollMessage;->cancel:I

    div-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    iget-object v1, p0, Lo/PollMessage;->onPostMessage:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_0
    iget-object v2, p0, Lo/PollMessage;->onNavigationEvent:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lo/PollMessage;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lo/PollMessage;->onPostMessage:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method final warmup()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/PollMessage;->setDefaultImpl:Ljava/lang/Object;

    return-object v0
.end method