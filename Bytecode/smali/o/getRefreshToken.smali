.class public Lo/getRefreshToken;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRefreshToken$extraCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/getRefreshToken$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/getRefreshToken$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/getRefreshToken$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:I

.field private asBinder:I

.field private asInterface:I

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:[Lo/getRefreshToken$extraCallback;

.field private onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lo/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;->extraCallback:Lo/InAppUpdateManager$showInstallBottomSheet$$inlined$executeOnResume$1;

    sput-object v0, Lo/getRefreshToken;->extraCallback:Ljava/util/Comparator;

    .line 39
    sget-object v0, Lo/getProvider;->onNavigationEvent:Lo/getProvider;

    sput-object v0, Lo/getRefreshToken;->onPostMessage:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lo/getRefreshToken;->onMessageChannelReady:I

    const/4 p1, 0x5

    new-array p1, p1, [Lo/getRefreshToken$extraCallback;

    .line 63
    iput-object p1, p0, Lo/getRefreshToken;->onNavigationEvent:[Lo/getRefreshToken$extraCallback;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lo/getRefreshToken;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getRefreshToken$extraCallback;Lo/getRefreshToken$extraCallback;)I
    .locals 0

    .line 40
    iget p0, p0, Lo/getRefreshToken$extraCallback;->extraCallback:F

    iget p1, p1, Lo/getRefreshToken$extraCallback;->extraCallback:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method static synthetic extraCallback(Lo/getRefreshToken$extraCallback;Lo/getRefreshToken$extraCallback;)I
    .locals 0

    .line 38
    iget p0, p0, Lo/getRefreshToken$extraCallback;->onPostMessage:I

    iget p1, p1, Lo/getRefreshToken$extraCallback;->onPostMessage:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private extraCallback()V
    .locals 2

    .line 144
    iget v0, p0, Lo/getRefreshToken;->ICustomTabsCallback$Stub:I

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    sget-object v1, Lo/getRefreshToken;->onPostMessage:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lo/getRefreshToken;->ICustomTabsCallback$Stub:I

    :cond_0
    return-void
.end method

.method private onPostMessage()V
    .locals 3

    .line 134
    iget v0, p0, Lo/getRefreshToken;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    sget-object v2, Lo/getRefreshToken;->extraCallback:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    iput v1, p0, Lo/getRefreshToken;->ICustomTabsCallback$Stub:I

    :cond_0
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(F)F
    .locals 4

    .line 116
    invoke-direct {p0}, Lo/getRefreshToken;->extraCallback()V

    .line 117
    iget v0, p0, Lo/getRefreshToken;->onRelationshipValidationResult:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    :goto_0
    iget-object v2, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 120
    iget-object v2, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRefreshToken$extraCallback;

    .line 121
    iget v3, v2, Lo/getRefreshToken$extraCallback;->onMessageChannelReady:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 123
    iget p1, v2, Lo/getRefreshToken$extraCallback;->extraCallback:F

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_2
    iget-object p1, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getRefreshToken$extraCallback;

    iget p1, p1, Lo/getRefreshToken$extraCallback;->extraCallback:F

    return p1
.end method

.method public onMessageChannelReady(IF)V
    .locals 3

    .line 83
    invoke-direct {p0}, Lo/getRefreshToken;->onPostMessage()V

    .line 85
    iget v0, p0, Lo/getRefreshToken;->asBinder:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lo/getRefreshToken;->onNavigationEvent:[Lo/getRefreshToken$extraCallback;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/getRefreshToken;->asBinder:I

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lo/getRefreshToken$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getRefreshToken$extraCallback;-><init>(Lo/getRefreshToken$3;)V

    .line 87
    :goto_0
    iget v1, p0, Lo/getRefreshToken;->asInterface:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/getRefreshToken;->asInterface:I

    iput v1, v0, Lo/getRefreshToken$extraCallback;->onPostMessage:I

    .line 88
    iput p1, v0, Lo/getRefreshToken$extraCallback;->onMessageChannelReady:I

    .line 89
    iput p2, v0, Lo/getRefreshToken$extraCallback;->extraCallback:F

    .line 90
    iget-object p2, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 91
    iget p2, p0, Lo/getRefreshToken;->onRelationshipValidationResult:I

    add-int/2addr p2, p1

    iput p2, p0, Lo/getRefreshToken;->onRelationshipValidationResult:I

    .line 93
    :cond_1
    :goto_1
    iget p1, p0, Lo/getRefreshToken;->onRelationshipValidationResult:I

    iget p2, p0, Lo/getRefreshToken;->onMessageChannelReady:I

    if-le p1, p2, :cond_3

    sub-int/2addr p1, p2

    .line 95
    iget-object p2, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getRefreshToken$extraCallback;

    .line 96
    iget v1, p2, Lo/getRefreshToken$extraCallback;->onMessageChannelReady:I

    if-gt v1, p1, :cond_2

    .line 97
    iget p1, p0, Lo/getRefreshToken;->onRelationshipValidationResult:I

    iget v1, p2, Lo/getRefreshToken$extraCallback;->onMessageChannelReady:I

    sub-int/2addr p1, v1

    iput p1, p0, Lo/getRefreshToken;->onRelationshipValidationResult:I

    .line 98
    iget-object p1, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 99
    iget p1, p0, Lo/getRefreshToken;->asBinder:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 100
    iget-object v0, p0, Lo/getRefreshToken;->onNavigationEvent:[Lo/getRefreshToken$extraCallback;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lo/getRefreshToken;->asBinder:I

    aput-object p2, v0, p1

    goto :goto_1

    .line 103
    :cond_2
    iget v0, p2, Lo/getRefreshToken$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v0, p1

    iput v0, p2, Lo/getRefreshToken$extraCallback;->onMessageChannelReady:I

    .line 104
    iget p2, p0, Lo/getRefreshToken;->onRelationshipValidationResult:I

    sub-int/2addr p2, p1

    iput p2, p0, Lo/getRefreshToken;->onRelationshipValidationResult:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onNavigationEvent()V
    .locals 1

    .line 70
    iget-object v0, p0, Lo/getRefreshToken;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lo/getRefreshToken;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lo/getRefreshToken;->asInterface:I

    .line 73
    iput v0, p0, Lo/getRefreshToken;->onRelationshipValidationResult:I

    return-void
.end method
