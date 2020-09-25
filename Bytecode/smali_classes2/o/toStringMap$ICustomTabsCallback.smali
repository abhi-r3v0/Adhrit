.class public final Lo/toStringMap$ICustomTabsCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/toStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field private static final ENCODED_ESCAPE:C = '\u0011'

.field private static final ENCODED_NUL:C = '\u0010'

.field private static final ENCODED_SEPARATOR:C = '\u0001'

.field private static final ESCAPE:C = '\u0001'

.field public static final design_appbar_state_list_animator:I = 0x7f020001

.field public static final design_fab_hide_motion_spec:I = 0x7f020002

.field public static final design_fab_show_motion_spec:I = 0x7f020003

.field public static final mtrl_btn_state_list_anim:I = 0x7f020005

.field public static final mtrl_btn_unelevated_state_list_anim:I = 0x7f020006

.field public static final mtrl_card_state_list_anim:I = 0x7f020007

.field public static final mtrl_chip_state_list_anim:I = 0x7f020008

.field public static final mtrl_extended_fab_change_size_motion_spec:I = 0x7f020009

.field public static final mtrl_extended_fab_hide_motion_spec:I = 0x7f02000a

.field public static final mtrl_extended_fab_show_motion_spec:I = 0x7f02000b

.field public static final mtrl_extended_fab_state_list_animator:I = 0x7f02000c

.field public static final mtrl_fab_hide_motion_spec:I = 0x7f02000d

.field public static final mtrl_fab_show_motion_spec:I = 0x7f02000e

.field public static final mtrl_fab_transformation_sheet_collapse_spec:I = 0x7f02000f

.field public static final mtrl_fab_transformation_sheet_expand_spec:I = 0x7f020010


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Type$onNavigationEvent;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Type$onNavigationEvent;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/toStringMap$ICustomTabsCallback;->arg$1:Lo/CrashlyticsReport$Type$onNavigationEvent;

    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    const-string v6, "Invalid path \"%s\""

    .line 1129
    invoke-static {v4, v6, v5}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ne v0, v1, :cond_2

    .line 1132
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Non-empty path \"%s\" had length 2"

    .line 1131
    invoke-static {v0, p0, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1139
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    .line 1141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_8

    .line 1147
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const-string v8, "\""

    const-string v9, "Invalid encoded resource path: \""

    if-ltz v7, :cond_7

    if-gt v7, v4, :cond_7

    add-int/lit8 v10, v7, 0x1

    .line 1152
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v3, :cond_5

    const/16 v12, 0x10

    if-eq v11, v12, :cond_4

    const/16 v12, 0x11

    if-ne v11, v12, :cond_3

    .line 1176
    invoke-virtual {p0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1180
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1170
    :cond_4
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1155
    :cond_5
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    .line 1161
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1163
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1166
    :goto_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v6, v7, 0x2

    goto :goto_2

    .line 1149
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-object v1
.end method

.method static decodeFieldPath(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 0

    .line 1122
    invoke-static {p0}, Lo/toStringMap$ICustomTabsCallback;->decode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromSegments(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p0

    return-object p0
.end method

.method public static decodeResourcePath(Ljava/lang/String;)Lo/setJailbroken;
    .locals 0

    .line 1118
    invoke-static {p0}, Lo/toStringMap$ICustomTabsCallback;->decode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo/setJailbroken;->fromSegments(Ljava/util/List;)Lo/setJailbroken;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Lo/setRamUsed;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lo/setRamUsed<",
            "TB;>;>(TB;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1082
    invoke-static {v0}, Lo/toStringMap$ICustomTabsCallback;->encodeSeparator(Ljava/lang/StringBuilder;)V

    .line 1084
    :cond_0
    invoke-virtual {p0, v2}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lo/toStringMap$ICustomTabsCallback;->encodeSegment(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1086
    :cond_1
    invoke-static {v0}, Lo/toStringMap$ICustomTabsCallback;->encodeSeparator(Ljava/lang/StringBuilder;)V

    .line 1087
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeSegment(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1092
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1093
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    .line 1102
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1099
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1096
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static encodeSeparator(Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 1109
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Type$onNavigationEvent;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/toStringMap$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/toStringMap$ICustomTabsCallback;-><init>(Lo/CrashlyticsReport$Type$onNavigationEvent;)V

    return-object v0
.end method

.method public static prefixSuccessor(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    .line 1202
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "successor may only operate on paths generated by encode"

    .line 1205
    invoke-static {v4, v5, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v2, v1

    int-to-char v1, v2

    .line 1206
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1207
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/toStringMap$ICustomTabsCallback;->arg$1:Lo/CrashlyticsReport$Type$onNavigationEvent;

    invoke-static {v0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->access$lambda$0(Lo/CrashlyticsReport$Type$onNavigationEvent;)V

    return-void
.end method
