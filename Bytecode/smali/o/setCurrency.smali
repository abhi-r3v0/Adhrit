.class public final Lo/setCurrency;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setCurrency;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Lo/getReferenceId$onMessageChannelReady;

.field private ICustomTabsCallback$Stub:[[B

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private asBinder:[Ljava/lang/String;

.field private asInterface:[Lo/setStartIconTintMode;

.field public extraCallback:[B

.field public final onMessageChannelReady:Lo/setDomain;

.field public onNavigationEvent:Lo/load;

.field public final onPostMessage:Lo/getReferenceId$onMessageChannelReady;

.field private onRelationshipValidationResult:[I

.field private onTransact:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getAmountRefunded;

    invoke-direct {v0}, Lo/getAmountRefunded;-><init>()V

    sput-object v0, Lo/setCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/load;Lo/setDomain;Lo/getReferenceId$onMessageChannelReady;Lo/getReferenceId$onMessageChannelReady;[I[Ljava/lang/String;[I[[B[Lo/setStartIconTintMode;Z)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/setCurrency;->onNavigationEvent:Lo/load;

    iput-object p2, p0, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    iput-object p3, p0, Lo/setCurrency;->onPostMessage:Lo/getReferenceId$onMessageChannelReady;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/setCurrency;->ICustomTabsCallback:Lo/getReferenceId$onMessageChannelReady;

    iput-object p5, p0, Lo/setCurrency;->onTransact:[I

    iput-object p1, p0, Lo/setCurrency;->asBinder:[Ljava/lang/String;

    iput-object p7, p0, Lo/setCurrency;->onRelationshipValidationResult:[I

    iput-object p1, p0, Lo/setCurrency;->ICustomTabsCallback$Stub:[[B

    iput-object p1, p0, Lo/setCurrency;->asInterface:[Lo/setStartIconTintMode;

    iput-boolean p10, p0, Lo/setCurrency;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method constructor <init>(Lo/load;[B[I[Ljava/lang/String;[I[[BZ[Lo/setStartIconTintMode;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/setCurrency;->onNavigationEvent:Lo/load;

    iput-object p2, p0, Lo/setCurrency;->extraCallback:[B

    iput-object p3, p0, Lo/setCurrency;->onTransact:[I

    iput-object p4, p0, Lo/setCurrency;->asBinder:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    iput-object p1, p0, Lo/setCurrency;->onPostMessage:Lo/getReferenceId$onMessageChannelReady;

    iput-object p1, p0, Lo/setCurrency;->ICustomTabsCallback:Lo/getReferenceId$onMessageChannelReady;

    iput-object p5, p0, Lo/setCurrency;->onRelationshipValidationResult:[I

    iput-object p6, p0, Lo/setCurrency;->ICustomTabsCallback$Stub:[[B

    iput-object p8, p0, Lo/setCurrency;->asInterface:[Lo/setStartIconTintMode;

    iput-boolean p7, p0, Lo/setCurrency;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/setCurrency;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lo/setCurrency;

    iget-object v1, p0, Lo/setCurrency;->onNavigationEvent:Lo/load;

    iget-object v3, p1, Lo/setCurrency;->onNavigationEvent:Lo/load;

    invoke-static {v1, v3}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setCurrency;->extraCallback:[B

    iget-object v3, p1, Lo/setCurrency;->extraCallback:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setCurrency;->onTransact:[I

    iget-object v3, p1, Lo/setCurrency;->onTransact:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setCurrency;->asBinder:[Ljava/lang/String;

    iget-object v3, p1, Lo/setCurrency;->asBinder:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    iget-object v3, p1, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    invoke-static {v1, v3}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setCurrency;->onPostMessage:Lo/getReferenceId$onMessageChannelReady;

    iget-object v3, p1, Lo/setCurrency;->onPostMessage:Lo/getReferenceId$onMessageChannelReady;

    invoke-static {v1, v3}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setCurrency;->ICustomTabsCallback:Lo/getReferenceId$onMessageChannelReady;

    iget-object v3, p1, Lo/setCurrency;->ICustomTabsCallback:Lo/getReferenceId$onMessageChannelReady;

    invoke-static {v1, v3}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setCurrency;->onRelationshipValidationResult:[I

    iget-object v3, p1, Lo/setCurrency;->onRelationshipValidationResult:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setCurrency;->ICustomTabsCallback$Stub:[[B

    iget-object v3, p1, Lo/setCurrency;->ICustomTabsCallback$Stub:[[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setCurrency;->asInterface:[Lo/setStartIconTintMode;

    iget-object v3, p1, Lo/setCurrency;->asInterface:[Lo/setStartIconTintMode;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lo/setCurrency;->ICustomTabsCallback$Stub$Proxy:Z

    iget-boolean p1, p1, Lo/setCurrency;->ICustomTabsCallback$Stub$Proxy:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lo/setCurrency;->onNavigationEvent:Lo/load;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setCurrency;->extraCallback:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setCurrency;->onTransact:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setCurrency;->asBinder:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setCurrency;->onPostMessage:Lo/getReferenceId$onMessageChannelReady;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setCurrency;->ICustomTabsCallback:Lo/getReferenceId$onMessageChannelReady;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setCurrency;->onRelationshipValidationResult:[I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setCurrency;->ICustomTabsCallback$Stub:[[B

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setCurrency;->asInterface:[Lo/setStartIconTintMode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/setCurrency;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/getPaymentData;->onPostMessage([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setCurrency;->onNavigationEvent:Lo/load;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCurrency;->extraCallback:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/setCurrency;->extraCallback:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCurrency;->onTransact:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCurrency;->asBinder:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCurrency;->onPostMessage:Lo/getReferenceId$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCurrency;->ICustomTabsCallback:Lo/getReferenceId$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCurrency;->onRelationshipValidationResult:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCurrency;->ICustomTabsCallback$Stub:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokensParcelables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCurrency;->asInterface:[Lo/setStartIconTintMode;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/setCurrency;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lo/setCurrency;->onNavigationEvent:Lo/load;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/setCurrency;->extraCallback:[B

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lo/setCurrency;->onTransact:[I

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[IZ)V

    iget-object v1, p0, Lo/setCurrency;->asBinder:[Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v1, p0, Lo/setCurrency;->onRelationshipValidationResult:[I

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[IZ)V

    iget-object v1, p0, Lo/setCurrency;->ICustomTabsCallback$Stub:[[B

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;I[[BZ)V

    iget-boolean v1, p0, Lo/setCurrency;->ICustomTabsCallback$Stub$Proxy:Z

    const/16 v3, 0x8

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lo/setCurrency;->asInterface:[Lo/setStartIconTintMode;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
