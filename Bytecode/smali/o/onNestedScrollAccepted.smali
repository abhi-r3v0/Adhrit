.class public final Lo/onNestedScrollAccepted;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasLogo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/hasLogo<",
        "Lo/setStackedBackground;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field public static final onNavigationEvent:Lo/onNestedScrollAccepted;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 11
    new-instance v0, Lo/onNestedScrollAccepted;

    invoke-direct {v0}, Lo/onNestedScrollAccepted;-><init>()V

    sput-object v0, Lo/onNestedScrollAccepted;->onNavigationEvent:Lo/onNestedScrollAccepted;

    const-string/jumbo v1, "t"

    const-string v2, "f"

    const-string/jumbo v3, "s"

    const-string v4, "j"

    const-string/jumbo v5, "tr"

    const-string v6, "lh"

    const-string v7, "ls"

    const-string v8, "fc"

    const-string/jumbo v9, "sc"

    const-string/jumbo v10, "sw"

    const-string v11, "of"

    .line 12
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/onNestedScrollAccepted;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/restoreToolbarHierarchyState;F)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1034
    sget-object v0, Lo/setStackedBackground$ICustomTabsCallback;->onPostMessage:Lo/setStackedBackground$ICustomTabsCallback;

    .line 1043
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v9, v0

    move-object v6, v1

    move-object v7, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 1044
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1045
    sget-object v0, Lo/onNestedScrollAccepted;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1085
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 1086
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 1082
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v16

    goto :goto_0

    .line 1079
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v2

    double-to-float v15, v2

    goto :goto_0

    .line 1076
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;)I

    move-result v14

    goto :goto_0

    .line 1073
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;)I

    move-result v13

    goto :goto_0

    .line 1070
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v2

    double-to-float v12, v2

    goto :goto_0

    .line 1067
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v2

    double-to-float v11, v2

    goto :goto_0

    .line 1064
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v10

    goto :goto_0

    .line 1056
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v0

    .line 1057
    sget-object v2, Lo/setStackedBackground$ICustomTabsCallback;->onPostMessage:Lo/setStackedBackground$ICustomTabsCallback;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_1

    if-gez v0, :cond_0

    goto :goto_1

    .line 1060
    :cond_0
    invoke-static {}, Lo/setStackedBackground$ICustomTabsCallback;->values()[Lo/setStackedBackground$ICustomTabsCallback;

    move-result-object v2

    aget-object v9, v2, v0

    goto :goto_0

    .line 1058
    :cond_1
    :goto_1
    sget-object v9, Lo/setStackedBackground$ICustomTabsCallback;->onPostMessage:Lo/setStackedBackground$ICustomTabsCallback;

    goto :goto_0

    .line 1053
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v2

    double-to-float v8, v2

    goto :goto_0

    .line 1050
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1047
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    .line 1089
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    .line 1091
    new-instance v0, Lo/setStackedBackground;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lo/setStackedBackground;-><init>(Ljava/lang/String;Ljava/lang/String;FLo/setStackedBackground$ICustomTabsCallback;IFFIIFZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
