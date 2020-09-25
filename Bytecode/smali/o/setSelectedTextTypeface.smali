.class public Lo/setSelectedTextTypeface;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private asBinder:I

.field private extraCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:I

.field private onRelationshipValidationResult:[B

.field private onTransact:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setAllowsGoneWidget;III)V
    .locals 2

    .line 2035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2008
    iput v0, p0, Lo/setSelectedTextTypeface;->onNavigationEvent:I

    .line 2010
    iput v0, p0, Lo/setSelectedTextTypeface;->onPostMessage:I

    .line 2012
    iput v0, p0, Lo/setSelectedTextTypeface;->extraCallback:I

    .line 2014
    iput v0, p0, Lo/setSelectedTextTypeface;->onMessageChannelReady:I

    .line 2016
    iput v0, p0, Lo/setSelectedTextTypeface;->ICustomTabsCallback:I

    new-array v1, v0, [B

    .line 2018
    iput-object v1, p0, Lo/setSelectedTextTypeface;->onRelationshipValidationResult:[B

    .line 2020
    iput v0, p0, Lo/setSelectedTextTypeface;->asBinder:I

    .line 2022
    iput-boolean v0, p0, Lo/setSelectedTextTypeface;->onTransact:Z

    .line 2074
    iget v0, p1, Lo/setAllowsGoneWidget;->extraCallback:I

    .line 2036
    iput v0, p0, Lo/setSelectedTextTypeface;->onNavigationEvent:I

    .line 2083
    iget p1, p1, Lo/setAllowsGoneWidget;->ICustomTabsCallback$Stub:I

    .line 2037
    iput p1, p0, Lo/setSelectedTextTypeface;->onPostMessage:I

    .line 2038
    iput p2, p0, Lo/setSelectedTextTypeface;->extraCallback:I

    .line 2039
    iput p3, p0, Lo/setSelectedTextTypeface;->onMessageChannelReady:I

    .line 2040
    iput p4, p0, Lo/setSelectedTextTypeface;->asBinder:I

    const/4 p1, 0x1

    .line 2041
    iput-boolean p1, p0, Lo/setSelectedTextTypeface;->onTransact:Z

    return-void
.end method

.method public constructor <init>(Lo/setAllowsGoneWidget;[B)V
    .locals 2

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1008
    iput v0, p0, Lo/setSelectedTextTypeface;->onNavigationEvent:I

    .line 1010
    iput v0, p0, Lo/setSelectedTextTypeface;->onPostMessage:I

    .line 1012
    iput v0, p0, Lo/setSelectedTextTypeface;->extraCallback:I

    .line 1014
    iput v0, p0, Lo/setSelectedTextTypeface;->onMessageChannelReady:I

    .line 1016
    iput v0, p0, Lo/setSelectedTextTypeface;->ICustomTabsCallback:I

    new-array v1, v0, [B

    .line 1018
    iput-object v1, p0, Lo/setSelectedTextTypeface;->onRelationshipValidationResult:[B

    .line 1020
    iput v0, p0, Lo/setSelectedTextTypeface;->asBinder:I

    .line 1022
    iput-boolean v0, p0, Lo/setSelectedTextTypeface;->onTransact:Z

    .line 1074
    iget v1, p1, Lo/setAllowsGoneWidget;->extraCallback:I

    .line 1025
    iput v1, p0, Lo/setSelectedTextTypeface;->onNavigationEvent:I

    .line 1083
    iget v1, p1, Lo/setAllowsGoneWidget;->ICustomTabsCallback$Stub:I

    .line 1026
    iput v1, p0, Lo/setSelectedTextTypeface;->onPostMessage:I

    .line 1092
    iget p1, p1, Lo/setAllowsGoneWidget;->onTransact:I

    .line 1027
    iput p1, p0, Lo/setSelectedTextTypeface;->extraCallback:I

    .line 1028
    iput v0, p0, Lo/setSelectedTextTypeface;->onMessageChannelReady:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1029
    :cond_0
    array-length p1, p2

    :goto_0
    iput p1, p0, Lo/setSelectedTextTypeface;->ICustomTabsCallback:I

    .line 1030
    iput-object p2, p0, Lo/setSelectedTextTypeface;->onRelationshipValidationResult:[B

    .line 1031
    iput v0, p0, Lo/setSelectedTextTypeface;->asBinder:I

    const/4 p1, 0x1

    .line 1032
    iput-boolean p1, p0, Lo/setSelectedTextTypeface;->onTransact:Z

    return-void
.end method


# virtual methods
.method public onNavigationEvent()[B
    .locals 6

    .line 3054
    iget-object v0, p0, Lo/setSelectedTextTypeface;->onRelationshipValidationResult:[B

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 3056
    array-length v0, v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 3058
    :goto_0
    iget-boolean v3, p0, Lo/setSelectedTextTypeface;->onTransact:Z

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3062
    :cond_1
    new-array v0, v0, [B

    .line 3065
    iget v3, p0, Lo/setSelectedTextTypeface;->onNavigationEvent:I

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 3067
    iget v3, p0, Lo/setSelectedTextTypeface;->onPostMessage:I

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v0, v5

    const/4 v3, 0x2

    .line 3069
    iget v5, p0, Lo/setSelectedTextTypeface;->extraCallback:I

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    const/4 v3, 0x3

    .line 3071
    iget v5, p0, Lo/setSelectedTextTypeface;->onMessageChannelReady:I

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 3073
    iget-object v3, p0, Lo/setSelectedTextTypeface;->onRelationshipValidationResult:[B

    if-eqz v3, :cond_2

    array-length v5, v3

    if-eqz v5, :cond_2

    .line 3074
    iget v5, p0, Lo/setSelectedTextTypeface;->ICustomTabsCallback:I

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 3076
    array-length v2, v3

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3077
    iget-object v2, p0, Lo/setSelectedTextTypeface;->onRelationshipValidationResult:[B

    array-length v2, v2

    add-int/2addr v2, v1

    .line 3079
    :cond_2
    iget-boolean v1, p0, Lo/setSelectedTextTypeface;->onTransact:Z

    if-eqz v1, :cond_3

    .line 3080
    aget-byte v1, v0, v2

    iget v3, p0, Lo/setSelectedTextTypeface;->asBinder:I

    int-to-byte v3, v3

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    :cond_3
    return-object v0
.end method
