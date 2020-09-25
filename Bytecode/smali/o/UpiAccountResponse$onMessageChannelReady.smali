.class final Lo/UpiAccountResponse$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final ICustomTabsCallback:I

.field private static final ICustomTabsCallback$Stub:[I

.field private static final asBinder:[I

.field private static final asInterface:[Z

.field private static final extraCallback:[I

.field private static final getInterfaceDescriptor:[I

.field public static final onMessageChannelReady:I

.field private static final onNavigationEvent:[I

.field public static final onPostMessage:I

.field private static final onRelationshipValidationResult:[I

.field private static final onTransact:[I


# instance fields
.field private final ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

.field private ICustomTabsService:Z

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:Z

.field private INotificationSideChannel:I

.field private INotificationSideChannel$Default:I

.field private INotificationSideChannel$Stub$Proxy:I

.field private IPostMessageService:I

.field private IPostMessageService$Stub:I

.field private IPostMessageService$Stub$Proxy:I

.field private cancel:I

.field private cancelAll:I

.field private extraCommand:Z

.field private getDefaultImpl:I

.field private mayLaunchUrl:I

.field private final newSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private notify:I

.field private postMessage:I

.field private requestPostMessageChannel:I

.field private updateVisuals:I

.field private validateRelationship:I

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 801
    invoke-static {v0, v0, v0, v1}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback(IIII)I

    move-result v2

    sput v2, Lo/UpiAccountResponse$onMessageChannelReady;->onMessageChannelReady:I

    .line 802
    invoke-static {v1, v1, v1, v1}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback(IIII)I

    move-result v2

    sput v2, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback:I

    const/4 v2, 0x3

    .line 803
    invoke-static {v1, v1, v1, v2}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback(IIII)I

    move-result v3

    sput v3, Lo/UpiAccountResponse$onMessageChannelReady;->onPostMessage:I

    const/4 v4, 0x7

    new-array v5, v4, [I

    .line 819
    fill-array-data v5, :array_0

    sput-object v5, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent:[I

    new-array v5, v4, [I

    .line 824
    fill-array-data v5, :array_1

    sput-object v5, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback:[I

    new-array v5, v4, [I

    .line 829
    fill-array-data v5, :array_2

    sput-object v5, Lo/UpiAccountResponse$onMessageChannelReady;->asBinder:[I

    new-array v5, v4, [Z

    .line 834
    fill-array-data v5, :array_3

    sput-object v5, Lo/UpiAccountResponse$onMessageChannelReady;->asInterface:[Z

    new-array v5, v4, [I

    .line 837
    sget v6, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback:I

    aput v6, v5, v1

    const/4 v7, 0x1

    aput v3, v5, v7

    aput v6, v5, v0

    aput v6, v5, v2

    const/4 v8, 0x4

    aput v3, v5, v8

    const/4 v9, 0x5

    aput v6, v5, v9

    const/4 v10, 0x6

    aput v6, v5, v10

    sput-object v5, Lo/UpiAccountResponse$onMessageChannelReady;->onRelationshipValidationResult:[I

    new-array v5, v4, [I

    .line 843
    fill-array-data v5, :array_4

    sput-object v5, Lo/UpiAccountResponse$onMessageChannelReady;->onTransact:[I

    new-array v5, v4, [I

    .line 850
    fill-array-data v5, :array_5

    sput-object v5, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub:[I

    new-array v4, v4, [I

    aput v6, v4, v1

    aput v6, v4, v7

    aput v6, v4, v0

    aput v6, v4, v2

    aput v6, v4, v8

    aput v3, v4, v9

    aput v3, v4, v10

    .line 855
    sput-object v4, Lo/UpiAccountResponse$onMessageChannelReady;->getInterfaceDescriptor:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    .line 888
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    .line 889
    invoke-virtual {p0}, Lo/UpiAccountResponse$onMessageChannelReady;->onMessageChannelReady()V

    return-void
.end method

.method public static extraCallback(IIII)I
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1220
    invoke-static {p0, v1, v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(III)I

    .line 1221
    invoke-static {p1, v1, v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(III)I

    .line 1222
    invoke-static {p2, v1, v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(III)I

    .line 1223
    invoke-static {p3, v1, v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(III)I

    const/4 v0, 0x1

    const/16 v2, 0xff

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_2

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/16 p3, 0x7f

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p3, 0xff

    :goto_1
    if-le p0, v0, :cond_3

    const/16 p0, 0xff

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-le p1, v0, :cond_4

    const/16 p1, 0xff

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-le p2, v0, :cond_5

    const/16 v1, 0xff

    .line 1245
    :cond_5
    invoke-static {p3, p0, p1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static onNavigationEvent(III)I
    .locals 1

    const/4 v0, 0x0

    .line 1216
    invoke-static {p0, p1, p2, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(C)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 1080
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    invoke-virtual {p0}, Lo/UpiAccountResponse$onMessageChannelReady;->onTransact()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1083
    iget p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->notify:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 1084
    iput v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->notify:I

    .line 1086
    :cond_0
    iget p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub$Proxy:I

    if-eq p1, v0, :cond_1

    .line 1087
    iput v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub$Proxy:I

    .line 1089
    :cond_1
    iget p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel:I

    if-eq p1, v0, :cond_2

    .line 1090
    iput v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel:I

    .line 1092
    :cond_2
    iget p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Stub$Proxy:I

    if-eq p1, v0, :cond_3

    .line 1093
    iput v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Stub$Proxy:I

    .line 1096
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub:I

    if-ge p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    .line 1097
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_7

    .line 1098
    :cond_5
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1101
    :cond_6
    iget-object v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_7
    return-void
.end method

.method public final ICustomTabsCallback(II)V
    .locals 0

    .line 1065
    iget p2, p0, Lo/UpiAccountResponse$onMessageChannelReady;->getDefaultImpl:I

    if-eq p2, p1, :cond_0

    const/16 p2, 0xa

    .line 1066
    invoke-virtual {p0, p2}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    .line 1068
    :cond_0
    iput p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->getDefaultImpl:I

    return-void
.end method

.method public final ICustomTabsCallback(III)V
    .locals 5

    .line 1031
    iget p3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel:I

    const/16 v0, 0x21

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1032
    iget p3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->cancelAll:I

    if-eq p3, p1, :cond_0

    .line 1033
    iget-object p3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->cancelAll:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel:I

    iget-object v4, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    .line 1034
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1033
    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1038
    :cond_0
    sget p3, Lo/UpiAccountResponse$onMessageChannelReady;->onMessageChannelReady:I

    if-eq p1, p3, :cond_1

    .line 1039
    iget-object p3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    iput p3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel:I

    .line 1040
    iput p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->cancelAll:I

    .line 1043
    :cond_1
    iget p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Stub$Proxy:I

    if-eq p1, v1, :cond_2

    .line 1044
    iget p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Default:I

    if-eq p1, p2, :cond_2

    .line 1045
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    iget v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Default:I

    invoke-direct {p3, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Stub$Proxy:I

    iget-object v2, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    .line 1046
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1045
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1050
    :cond_2
    sget p1, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback:I

    if-eq p2, p1, :cond_3

    .line 1051
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Stub$Proxy:I

    .line 1052
    iput p2, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Default:I

    :cond_3
    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 893
    invoke-virtual {p0}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final asBinder()Lo/UpiAppsInstrument;
    .locals 15

    .line 1136
    invoke-virtual {p0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1141
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1144
    :goto_0
    iget-object v3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1145
    iget-object v3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 1146
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lo/UpiAccountResponse$onMessageChannelReady;->onTransact()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1154
    iget v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 1167
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected justification value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 1161
    :cond_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 1158
    :cond_5
    :goto_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_2
    move-object v6, v1

    .line 1172
    iget-boolean v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->extraCommand:Z

    if-eqz v1, :cond_6

    .line 1173
    iget v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->postMessage:I

    int-to-float v1, v1

    const/high16 v7, 0x42c60000    # 99.0f

    div-float/2addr v1, v7

    .line 1174
    iget v8, p0, Lo/UpiAccountResponse$onMessageChannelReady;->requestPostMessageChannel:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_3

    .line 1176
    :cond_6
    iget v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->postMessage:I

    int-to-float v1, v1

    const/high16 v7, 0x43510000    # 209.0f

    div-float/2addr v1, v7

    .line 1177
    iget v7, p0, Lo/UpiAccountResponse$onMessageChannelReady;->requestPostMessageChannel:I

    int-to-float v7, v7

    const/high16 v8, 0x42940000    # 74.0f

    div-float v8, v7, v8

    :goto_3
    const v7, 0x3f666666    # 0.9f

    mul-float v1, v1, v7

    const v9, 0x3d4ccccd    # 0.05f

    add-float v10, v1, v9

    mul-float v8, v8, v7

    add-float v7, v8, v9

    .line 1191
    iget v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->mayLaunchUrl:I

    rem-int/lit8 v8, v1, 0x3

    if-nez v8, :cond_7

    const/4 v8, 0x0

    goto :goto_4

    .line 1193
    :cond_7
    rem-int/2addr v1, v4

    if-ne v1, v5, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x2

    .line 1200
    :goto_4
    iget v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->mayLaunchUrl:I

    div-int/lit8 v9, v1, 0x3

    if-nez v9, :cond_9

    const/4 v9, 0x0

    goto :goto_5

    .line 1202
    :cond_9
    div-int/2addr v1, v4

    if-ne v1, v5, :cond_a

    const/4 v9, 0x1

    goto :goto_5

    :cond_a
    const/4 v9, 0x2

    .line 1208
    :goto_5
    iget v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->cancel:I

    sget v3, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback:I

    if-eq v1, v3, :cond_b

    const/4 v0, 0x1

    .line 1210
    :cond_b
    new-instance v13, Lo/UpiAppsInstrument;

    const/4 v5, 0x0

    const/4 v11, 0x1

    iget v12, p0, Lo/UpiAccountResponse$onMessageChannelReady;->cancel:I

    iget v14, p0, Lo/UpiAccountResponse$onMessageChannelReady;->updateVisuals:I

    move-object v1, v13

    move-object v3, v6

    move v4, v7

    move v6, v8

    move v7, v10

    move v8, v9

    move v9, v11

    move v10, v0

    move v11, v12

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lo/UpiAppsInstrument;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v13
.end method

.method public final extraCallback(IIIZZII)V
    .locals 0

    .line 1006
    iget p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->notify:I

    const/16 p2, 0x21

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    if-nez p4, :cond_1

    .line 1008
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/StyleSpan;

    const/4 p6, 0x2

    invoke-direct {p4, p6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget p6, p0, Lo/UpiAccountResponse$onMessageChannelReady;->notify:I

    iget-object p7, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    .line 1009
    invoke-virtual {p7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p7

    .line 1008
    invoke-virtual {p1, p4, p6, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1010
    iput p3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->notify:I

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 1013
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->notify:I

    .line 1016
    :cond_1
    :goto_0
    iget p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub$Proxy:I

    if-eq p1, p3, :cond_2

    if-nez p5, :cond_3

    .line 1018
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p5, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub$Proxy:I

    iget-object p6, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    .line 1019
    invoke-virtual {p6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    .line 1018
    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1020
    iput p3, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub$Proxy:I

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 1023
    iget-object p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub$Proxy:I

    :cond_3
    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 936
    iget-boolean v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->warmup:Z

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 897
    invoke-virtual {p0}, Lo/UpiAccountResponse$onMessageChannelReady;->onPostMessage()V

    const/4 v0, 0x0

    .line 899
    iput-boolean v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsService:Z

    .line 900
    iput-boolean v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->warmup:Z

    const/4 v1, 0x4

    .line 901
    iput v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->updateVisuals:I

    .line 902
    iput-boolean v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->extraCommand:Z

    .line 903
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->requestPostMessageChannel:I

    .line 904
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->postMessage:I

    .line 905
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->mayLaunchUrl:I

    const/16 v1, 0xf

    .line 906
    iput v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub:I

    const/4 v1, 0x1

    .line 907
    iput-boolean v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:Z

    .line 908
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService:I

    .line 909
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsService$Stub:I

    .line 910
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->validateRelationship:I

    .line 911
    sget v0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback:I

    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->cancel:I

    .line 913
    sget v1, Lo/UpiAccountResponse$onMessageChannelReady;->onMessageChannelReady:I

    iput v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->cancelAll:I

    .line 914
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Default:I

    return-void
.end method

.method public final onNavigationEvent(IIZIIII)V
    .locals 0

    .line 991
    iput p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->cancel:I

    .line 996
    iput p7, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService:I

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 0

    .line 932
    iput-boolean p1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->warmup:Z

    return-void
.end method

.method public final onNavigationEvent(ZZZIZIIIIIII)V
    .locals 11

    move-object v0, p0

    move v1, p2

    move/from16 v2, p11

    move/from16 v3, p12

    const/4 v4, 0x1

    .line 942
    iput-boolean v4, v0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsService:Z

    move v5, p1

    .line 943
    iput-boolean v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->warmup:Z

    .line 944
    iput-boolean v1, v0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:Z

    move v5, p4

    .line 945
    iput v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->updateVisuals:I

    move/from16 v5, p5

    .line 946
    iput-boolean v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->extraCommand:Z

    move/from16 v5, p6

    .line 947
    iput v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->requestPostMessageChannel:I

    move/from16 v5, p7

    .line 948
    iput v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->postMessage:I

    move/from16 v5, p10

    .line 949
    iput v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->mayLaunchUrl:I

    .line 952
    iget v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub:I

    add-int/lit8 v6, p8, 0x1

    if-eq v5, v6, :cond_2

    .line 953
    iput v6, v0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub:I

    :goto_0
    if-eqz v1, :cond_0

    .line 956
    iget-object v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub:I

    if-ge v5, v6, :cond_1

    :cond_0
    iget-object v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    .line 957
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_2

    .line 958
    :cond_1
    iget-object v5, v0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 964
    iget v1, v0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsService$Stub:I

    if-eq v1, v2, :cond_3

    .line 965
    iput v2, v0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsService$Stub:I

    add-int/lit8 v1, v2, -0x1

    .line 969
    sget-object v2, Lo/UpiAccountResponse$onMessageChannelReady;->onRelationshipValidationResult:[I

    aget v2, v2, v1

    sget v5, Lo/UpiAccountResponse$onMessageChannelReady;->onPostMessage:I

    sget-object v6, Lo/UpiAccountResponse$onMessageChannelReady;->asInterface:[Z

    aget-boolean v6, v6, v1

    const/4 v7, 0x0

    sget-object v8, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback:[I

    aget v8, v8, v1

    sget-object v9, Lo/UpiAccountResponse$onMessageChannelReady;->asBinder:[I

    aget v9, v9, v1

    sget-object v10, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent:[I

    aget v1, v10, v1

    move-object p1, p0

    move p2, v2

    move p3, v5

    move p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v1

    invoke-virtual/range {p1 .. p8}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent(IIZIIII)V

    :cond_3
    if-eqz v3, :cond_4

    .line 976
    iget v1, v0, Lo/UpiAccountResponse$onMessageChannelReady;->validateRelationship:I

    if-eq v1, v3, :cond_4

    .line 977
    iput v3, v0, Lo/UpiAccountResponse$onMessageChannelReady;->validateRelationship:I

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 982
    sget-object v7, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub:[I

    aget v7, v7, v1

    sget-object v8, Lo/UpiAccountResponse$onMessageChannelReady;->onTransact:[I

    aget v8, v8, v1

    move-object p1, p0

    move p2, v2

    move p3, v3

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p1 .. p8}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback(IIIZZII)V

    .line 984
    sget v2, Lo/UpiAccountResponse$onMessageChannelReady;->onMessageChannelReady:I

    sget-object v3, Lo/UpiAccountResponse$onMessageChannelReady;->getInterfaceDescriptor:[I

    aget v1, v3, v1

    sget v3, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-virtual {p0, v2, v1, v3}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(III)V

    :cond_4
    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 928
    iget-boolean v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsService:Z

    return v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 918
    iget-object v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->newSession:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 919
    iget-object v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    .line 920
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->notify:I

    .line 921
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub$Proxy:I

    .line 922
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel:I

    .line 923
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Stub$Proxy:I

    const/4 v0, 0x0

    .line 924
    iput v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->getDefaultImpl:I

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 3

    .line 1072
    iget-object v0, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1074
    iget-object v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method public final onTransact()Landroid/text/SpannableString;
    .locals 6

    .line 1106
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1108
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1111
    iget v2, p0, Lo/UpiAccountResponse$onMessageChannelReady;->notify:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1112
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lo/UpiAccountResponse$onMessageChannelReady;->notify:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1116
    :cond_0
    iget v2, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub$Proxy:I

    if-eq v2, v4, :cond_1

    .line 1117
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lo/UpiAccountResponse$onMessageChannelReady;->IPostMessageService$Stub$Proxy:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1121
    :cond_1
    iget v2, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel:I

    if-eq v2, v4, :cond_2

    .line 1122
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lo/UpiAccountResponse$onMessageChannelReady;->cancelAll:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1126
    :cond_2
    iget v2, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Stub$Proxy:I

    if-eq v2, v4, :cond_3

    .line 1127
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Default:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lo/UpiAccountResponse$onMessageChannelReady;->INotificationSideChannel$Stub$Proxy:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1132
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method
