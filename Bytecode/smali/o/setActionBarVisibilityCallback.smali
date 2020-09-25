.class public final Lo/setActionBarVisibilityCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setActionBarVisibilityCallback$onMessageChannelReady;,
        Lo/setActionBarVisibilityCallback$onPostMessage;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final ICustomTabsCallback$Stub:I

.field final ICustomTabsCallback$Stub$Proxy:I

.field final ICustomTabsService:I

.field final ICustomTabsService$Stub:Z

.field final asBinder:Lo/onMeasure;

.field final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/generateDefaultLayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/initTitle;",
            ">;"
        }
    .end annotation
.end field

.field final extraCommand:Lo/isCurrent$onMessageChannelReady;

.field final getInterfaceDescriptor:I

.field final mayLaunchUrl:I

.field final newSession:F

.field final onMessageChannelReady:Lo/createCheckBox;

.field public final onNavigationEvent:J

.field public final onPostMessage:Lo/setActionBarVisibilityCallback$onPostMessage;

.field final onRelationshipValidationResult:Ljava/lang/String;

.field final onTransact:J

.field final postMessage:Lo/getMeasuredHeightWithMargins;

.field final requestPostMessageChannel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field final updateVisuals:Lo/setTransitioning;

.field final validateRelationship:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

.field final warmup:F


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/createCheckBox;Ljava/lang/String;JLo/setActionBarVisibilityCallback$onPostMessage;JLjava/lang/String;Ljava/util/List;Lo/onMeasure;IIIFFIILo/getMeasuredHeightWithMargins;Lo/isCurrent$onMessageChannelReady;Ljava/util/List;Lo/setActionBarVisibilityCallback$onMessageChannelReady;Lo/setTransitioning;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/initTitle;",
            ">;",
            "Lo/createCheckBox;",
            "Ljava/lang/String;",
            "J",
            "Lo/setActionBarVisibilityCallback$onPostMessage;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/generateDefaultLayoutParams;",
            ">;",
            "Lo/onMeasure;",
            "IIIFFII",
            "Lo/getMeasuredHeightWithMargins;",
            "Lo/isCurrent$onMessageChannelReady;",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lo/setActionBarVisibilityCallback$onMessageChannelReady;",
            "Lo/setTransitioning;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 66
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->extraCallback:Ljava/util/List;

    move-object v1, p2

    .line 67
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->onMessageChannelReady:Lo/createCheckBox;

    move-object v1, p3

    .line 68
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    move-wide v1, p4

    .line 69
    iput-wide v1, v0, Lo/setActionBarVisibilityCallback;->onNavigationEvent:J

    move-object v1, p6

    .line 70
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->onPostMessage:Lo/setActionBarVisibilityCallback$onPostMessage;

    move-wide v1, p7

    .line 71
    iput-wide v1, v0, Lo/setActionBarVisibilityCallback;->onTransact:J

    move-object v1, p9

    .line 72
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->onRelationshipValidationResult:Ljava/lang/String;

    move-object v1, p10

    .line 73
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->asInterface:Ljava/util/List;

    move-object v1, p11

    .line 74
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->asBinder:Lo/onMeasure;

    move v1, p12

    .line 75
    iput v1, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback$Stub:I

    move/from16 v1, p13

    .line 76
    iput v1, v0, Lo/setActionBarVisibilityCallback;->getInterfaceDescriptor:I

    move/from16 v1, p14

    .line 77
    iput v1, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsService:I

    move/from16 v1, p15

    .line 78
    iput v1, v0, Lo/setActionBarVisibilityCallback;->warmup:F

    move/from16 v1, p16

    .line 79
    iput v1, v0, Lo/setActionBarVisibilityCallback;->newSession:F

    move/from16 v1, p17

    .line 80
    iput v1, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback$Stub$Proxy:I

    move/from16 v1, p18

    .line 81
    iput v1, v0, Lo/setActionBarVisibilityCallback;->mayLaunchUrl:I

    move-object/from16 v1, p19

    .line 82
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->postMessage:Lo/getMeasuredHeightWithMargins;

    move-object/from16 v1, p20

    .line 83
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->extraCommand:Lo/isCurrent$onMessageChannelReady;

    move-object/from16 v1, p21

    .line 84
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->requestPostMessageChannel:Ljava/util/List;

    move-object/from16 v1, p22

    .line 85
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->validateRelationship:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    move-object/from16 v1, p23

    .line 86
    iput-object v1, v0, Lo/setActionBarVisibilityCallback;->updateVisuals:Lo/setTransitioning;

    move/from16 v1, p24

    .line 87
    iput-boolean v1, v0, Lo/setActionBarVisibilityCallback;->ICustomTabsService$Stub:Z

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v1, p0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v2, p0, Lo/setActionBarVisibilityCallback;->onMessageChannelReady:Lo/createCheckBox;

    .line 1139
    iget-wide v3, p0, Lo/setActionBarVisibilityCallback;->onTransact:J

    .line 2133
    iget-object v2, v2, Lo/createCheckBox;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const/4 v5, 0x0

    .line 3109
    invoke-virtual {v2, v3, v4, v5}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2133
    check-cast v2, Lo/setActionBarVisibilityCallback;

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    iget-object v3, v2, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v3, p0, Lo/setActionBarVisibilityCallback;->onMessageChannelReady:Lo/createCheckBox;

    .line 3139
    iget-wide v6, v2, Lo/setActionBarVisibilityCallback;->onTransact:J

    .line 4133
    iget-object v2, v3, Lo/createCheckBox;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 5109
    invoke-virtual {v2, v6, v7, v5}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4133
    check-cast v2, Lo/setActionBarVisibilityCallback;

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5111
    iget-object v3, v2, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v3, p0, Lo/setActionBarVisibilityCallback;->onMessageChannelReady:Lo/createCheckBox;

    .line 5139
    iget-wide v6, v2, Lo/setActionBarVisibilityCallback;->onTransact:J

    .line 6133
    iget-object v2, v3, Lo/createCheckBox;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 7109
    invoke-virtual {v2, v6, v7, v5}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6133
    check-cast v2, Lo/setActionBarVisibilityCallback;

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7127
    :cond_1
    iget-object v2, p0, Lo/setActionBarVisibilityCallback;->asInterface:Ljava/util/List;

    .line 195
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8127
    iget-object v2, p0, Lo/setActionBarVisibilityCallback;->asInterface:Ljava/util/List;

    .line 196
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8159
    :cond_2
    iget v2, p0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback$Stub:I

    if-eqz v2, :cond_3

    .line 9155
    iget v2, p0, Lo/setActionBarVisibilityCallback;->getInterfaceDescriptor:I

    if-eqz v2, :cond_3

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 9159
    iget v5, p0, Lo/setActionBarVisibilityCallback;->ICustomTabsCallback$Stub:I

    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 10155
    iget v5, p0, Lo/setActionBarVisibilityCallback;->getInterfaceDescriptor:I

    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 11151
    iget v5, p0, Lo/setActionBarVisibilityCallback;->ICustomTabsService:I

    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_3
    iget-object v2, p0, Lo/setActionBarVisibilityCallback;->extraCallback:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v2, p0, Lo/setActionBarVisibilityCallback;->extraCallback:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 208
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 175
    invoke-virtual {p0, v0}, Lo/setActionBarVisibilityCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
