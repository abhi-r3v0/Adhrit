.class public final Lo/updateAllRemainingSpans$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateAllRemainingSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008.\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bs\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0011J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u00103\u001a\u00020\tH\u00c6\u0003J\t\u00104\u001a\u00020\tH\u00c6\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u00106\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0011\u00107\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u00c6\u0003J|\u00108\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u00c6\u0001\u00a2\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020\t2\u0008\u0010;\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010<\u001a\u00020\u000cH\u00d6\u0001J\t\u0010=\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\n\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010$\"\u0004\u0008(\u0010&R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0013\"\u0004\u0008*\u0010\u0015R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001c\"\u0004\u0008,\u0010\u001eR\u001e\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008-\u0010\u0017\"\u0004\u0008.\u0010\u0019\u00a8\u0006>"
    }
    d2 = {
        "Lcom/dreamplug/widget/GenericBottomSheet$UIState;",
        "",
        "titleContent",
        "",
        "mainContent",
        "primaryButton",
        "Lcom/dreamplug/widget/GenericBottomSheet$Button;",
        "secondaryButton",
        "showProgress",
        "",
        "dismissOnCta",
        "headerIllustration",
        "",
        "trustSymbol",
        "onDismiss",
        "Lkotlin/Function0;",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/widget/GenericBottomSheet$Button;Lcom/dreamplug/widget/GenericBottomSheet$Button;ZZLjava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V",
        "getDismissOnCta",
        "()Z",
        "setDismissOnCta",
        "(Z)V",
        "getHeaderIllustration",
        "()Ljava/lang/Integer;",
        "setHeaderIllustration",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getMainContent",
        "()Ljava/lang/String;",
        "setMainContent",
        "(Ljava/lang/String;)V",
        "getOnDismiss",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnDismiss",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getPrimaryButton",
        "()Lcom/dreamplug/widget/GenericBottomSheet$Button;",
        "setPrimaryButton",
        "(Lcom/dreamplug/widget/GenericBottomSheet$Button;)V",
        "getSecondaryButton",
        "setSecondaryButton",
        "getShowProgress",
        "setShowProgress",
        "getTitleContent",
        "setTitleContent",
        "getTrustSymbol",
        "setTrustSymbol",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/widget/GenericBottomSheet$Button;Lcom/dreamplug/widget/GenericBottomSheet$Button;ZZLjava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)Lcom/dreamplug/widget/GenericBottomSheet$UIState;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public ICustomTabsCallback$Stub:Z

.field asBinder:Ljava/lang/Integer;

.field asInterface:Ljava/lang/Integer;

.field public extraCallback:Lo/updateAllRemainingSpans$extraCallback;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Z

.field public onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

.field onTransact:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1ff

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lo/updateAllRemainingSpans$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/updateAllRemainingSpans$extraCallback;Lo/updateAllRemainingSpans$extraCallback;ZLjava/lang/Integer;Ljava/lang/Integer;Lo/getServerTime;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/updateAllRemainingSpans$extraCallback;Lo/updateAllRemainingSpans$extraCallback;ZLjava/lang/Integer;Ljava/lang/Integer;Lo/getServerTime;I)V
    .locals 13

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    move/from16 v9, p5

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p6

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p7

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p8

    :goto_7
    const/4 v8, 0x0

    move-object v3, p0

    .line 159
    invoke-direct/range {v3 .. v12}, Lo/updateAllRemainingSpans$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/updateAllRemainingSpans$extraCallback;Lo/updateAllRemainingSpans$extraCallback;ZZLjava/lang/Integer;Ljava/lang/Integer;Lo/getServerTime;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/updateAllRemainingSpans$extraCallback;Lo/updateAllRemainingSpans$extraCallback;ZZLjava/lang/Integer;Ljava/lang/Integer;Lo/getServerTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/updateAllRemainingSpans$extraCallback;",
            "Lo/updateAllRemainingSpans$extraCallback;",
            "ZZ",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    iput-object p2, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    iput-object p4, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onNavigationEvent:Z

    iput-boolean p6, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    iput-object p7, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asInterface:Ljava/lang/Integer;

    iput-object p8, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asBinder:Ljava/lang/Integer;

    iput-object p9, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onTransact:Lo/getServerTime;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;

    if-eqz v0, :cond_0

    check-cast p1, Lo/updateAllRemainingSpans$onMessageChannelReady;

    iget-object v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    iget-object v1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    iget-object v1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onNavigationEvent:Z

    iget-boolean v1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onNavigationEvent:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    iget-boolean v1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asInterface:Ljava/lang/Integer;

    iget-object v1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->asInterface:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asBinder:Ljava/lang/Integer;

    iget-object v1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->asBinder:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onTransact:Lo/getServerTime;

    iget-object p1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onTransact:Lo/getServerTime;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onNavigationEvent:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asInterface:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asBinder:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onTransact:Lo/getServerTime;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UIState(titleContent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onNavigationEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dismissOnCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", headerIllustration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asInterface:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trustSymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asBinder:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onDismiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onTransact:Lo/getServerTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
