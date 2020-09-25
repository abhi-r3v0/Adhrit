.class public final Lo/getIconBitmap;
.super Ljava/lang/Object;

# interfaces
.implements Lo/initTitle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getIconBitmap$onNavigationEvent;,
        Lo/getIconBitmap$onPostMessage;,
        Lo/getIconBitmap$extraCallback;
    }
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:Lo/onDetachedFromWindow;

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2062
    invoke-static {}, Lo/writeRawMessageSetExtension$onPostMessage;->values()[Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    :try_start_0
    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->onNavigationEvent:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->onPostMessage:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->extraCallback:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->ICustomTabsCallback:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->onTransact:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->onRelationshipValidationResult:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->asBinder:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->asInterface:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->ICustomTabsCallback$Stub:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->ICustomTabsService:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILo/onDetachedFromWindow;Z)V
    .locals 0

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput-object p1, p0, Lo/getIconBitmap;->ICustomTabsCallback:Ljava/lang/String;

    .line 1017
    iput p2, p0, Lo/getIconBitmap;->onPostMessage:I

    .line 1018
    iput-object p3, p0, Lo/getIconBitmap;->onNavigationEvent:Lo/onDetachedFromWindow;

    .line 1019
    iput-boolean p4, p0, Lo/getIconBitmap;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 1031
    new-instance v0, Lo/getAnimatedVisibility;

    invoke-direct {v0, p1, p2, p0}, Lo/getAnimatedVisibility;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/getIconBitmap;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapePath{name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getIconBitmap;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getIconBitmap;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
