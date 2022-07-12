.class public Lnrokakarot/Auto/AutoBikiep;
.super Ljava/lang/Thread;
.source "AutoBikiep.java"


# static fields
.field private static bongtai:I = -0x1

.field public static isautobikiep:Z = false

.field public static ispause:Z = false

.field public static khienIndex:I = -0x1

.field public static lastTimeNext:J = 0x0L

.field public static timeuseitem:J = 0x0L

.field public static ttnlIndex:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 23
    :goto_0
    sget-boolean v0, Lnrokakarot/Auto/AutoBikiep;->isautobikiep:Z

    if-eqz v0, :cond_d

    if-eqz v0, :cond_d

    .line 27
    :try_start_0
    invoke-static {}, Lnrokakarot/UglyBoy;->gI()Lnrokakarot/UglyBoy;

    move-result-object v0

    invoke-virtual {v0}, Lnrokakarot/UglyBoy;->CanLoop()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    invoke-static {}, Lnrokakarot/UglyBoy;->gI()Lnrokakarot/UglyBoy;

    move-result-object v0

    const/16 v1, 0x180

    invoke-virtual {v0, v1}, Lnrokakarot/UglyBoy;->findItemBagById2(S)I

    move-result v0

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lnrokakarot/Auto/AutoBikiep;->timeuseitem:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x49444

    const/4 v5, -0x1

    cmp-long v6, v1, v3

    if-ltz v6, :cond_0

    if-eq v0, v5, :cond_0

    .line 31
    invoke-static {v0}, Lnrokakarot/Item;->UseItem(I)V

    .line 34
    :cond_0
    sget v0, Lnrokakarot/Auto/AutoBikiep;->khienIndex:I

    const/16 v1, 0xa

    const-wide/16 v2, 0x5dc

    const/4 v4, 0x0

    const-wide/16 v6, 0x1f4

    const/4 v8, 0x1

    if-eq v0, v5, :cond_2

    invoke-static {}, Lnrokakarot/Char;->isCharge()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    sget v9, Lnrokakarot/Auto/AutoBikiep;->khienIndex:I

    aget-object v0, v0, v9

    invoke-static {v0}, Lnrokakarot/Skill;->canUseSkill(Le/n0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    sget v9, Lnrokakarot/Auto/AutoBikiep;->khienIndex:I

    aget-object v0, v0, v9

    invoke-static {v0, v8}, Lnrokakarot/GameScr;->doSelectSkill(Le/n0;Z)V

    .line 37
    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    sget v9, Lnrokakarot/Auto/AutoBikiep;->khienIndex:I

    aget-object v0, v0, v9

    invoke-static {v0, v8}, Lnrokakarot/GameScr;->doSelectSkill(Le/n0;Z)V

    .line 38
    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    sget v9, Lnrokakarot/Auto/AutoBikiep;->khienIndex:I

    aget-object v0, v0, v9

    invoke-static {v0}, Lnrokakarot/Skill;->Cooldown(Le/n0;)J

    move-result-wide v9

    cmp-long v0, v9, v2

    if-lez v0, :cond_1

    .line 40
    invoke-static {v1}, Lnrokakarot/GameScr;->setAuto(I)V

    .line 43
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 44
    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0, v8}, Lnrokakarot/GameScr;->doSelectSkill(Le/n0;Z)V

    .line 47
    :cond_2
    invoke-static {}, Lnrokakarot/Char;->isCharge()Z

    move-result v0

    const/high16 v9, 0x42c80000    # 100.0f

    if-nez v0, :cond_4

    invoke-static {}, Lnrokakarot/UglyBoy;->gI()Lnrokakarot/UglyBoy;

    move-result-object v0

    const/16 v10, 0x1c6

    invoke-virtual {v0, v10}, Lnrokakarot/UglyBoy;->findItemBagById2(S)I

    move-result v0

    sput v0, Lnrokakarot/Auto/AutoBikiep;->bongtai:I

    if-eq v0, v5, :cond_4

    .line 48
    invoke-static {}, Lnrokakarot/Char;->myChar()Lg/e;

    move-result-object v0

    invoke-static {v0}, Lnrokakarot/Char;->getHP(Lg/e;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lnrokakarot/Char;->myChar()Lg/e;

    move-result-object v10

    invoke-static {v10}, Lnrokakarot/Char;->getHPFull(Lg/e;)I

    move-result v10

    int-to-float v10, v10

    sget v11, Lnrokakarot/UglyBoy;->hpttnl:I

    int-to-float v11, v11

    div-float/2addr v11, v9

    mul-float v10, v10, v11

    cmpg-float v0, v0, v10

    if-lez v0, :cond_3

    invoke-static {}, Lnrokakarot/Char;->myChar()Lg/e;

    move-result-object v0

    invoke-static {v0}, Lnrokakarot/Char;->getMP(Lg/e;)I

    move-result v0

    int-to-float v0, v0

    .line 49
    invoke-static {}, Lnrokakarot/Char;->myChar()Lg/e;

    move-result-object v10

    invoke-static {v10}, Lnrokakarot/Char;->getMPFull(Lg/e;)I

    move-result v10

    int-to-float v10, v10

    sget v11, Lnrokakarot/UglyBoy;->mpttnl:I

    int-to-float v11, v11

    div-float/2addr v11, v9

    mul-float v10, v10, v11

    cmpg-float v0, v0, v10

    if-gtz v0, :cond_4

    .line 50
    :cond_3
    sget v0, Lnrokakarot/Auto/AutoBikiep;->bongtai:I

    invoke-static {v0}, Lnrokakarot/Item;->UseItem(I)V

    const-wide/16 v10, 0x3e8

    .line 51
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 52
    sget v0, Lnrokakarot/Auto/AutoBikiep;->bongtai:I

    invoke-static {v0}, Lnrokakarot/Item;->UseItem(I)V

    .line 53
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 54
    invoke-static {}, Lnrokakarot/Service;->gI()Lnrokakarot/Service;

    move-result-object v0

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Lnrokakarot/Service;->petStatus(B)V

    .line 58
    :cond_4
    invoke-static {}, Lnrokakarot/Char;->isXayda()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 60
    sget v0, Lnrokakarot/Auto/AutoBikiep;->ttnlIndex:I

    if-eq v0, v5, :cond_5

    invoke-static {}, Lnrokakarot/Char;->myChar()Lg/e;

    move-result-object v0

    invoke-static {v0}, Lnrokakarot/Char;->getHP(Lg/e;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lnrokakarot/Char;->myChar()Lg/e;

    move-result-object v5

    invoke-static {v5}, Lnrokakarot/Char;->getHPFull(Lg/e;)I

    move-result v5

    int-to-float v5, v5

    sget v10, Lnrokakarot/UglyBoy;->hpttnl:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    mul-float v5, v5, v10

    cmpg-float v0, v0, v5

    if-lez v0, :cond_6

    :cond_5
    invoke-static {}, Lnrokakarot/Char;->myChar()Lg/e;

    move-result-object v0

    invoke-static {v0}, Lnrokakarot/Char;->getMP(Lg/e;)I

    move-result v0

    int-to-float v0, v0

    .line 61
    invoke-static {}, Lnrokakarot/Char;->myChar()Lg/e;

    move-result-object v5

    invoke-static {v5}, Lnrokakarot/Char;->getMPFull(Lg/e;)I

    move-result v5

    int-to-float v5, v5

    sget v10, Lnrokakarot/UglyBoy;->mpttnl:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    mul-float v5, v5, v10

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_8

    .line 62
    :cond_6
    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-static {v0}, Lnrokakarot/Skill;->canUseSkill(Le/n0;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 64
    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    sget v5, Lnrokakarot/Auto/AutoBikiep;->ttnlIndex:I

    aget-object v0, v0, v5

    invoke-static {v0, v8}, Lnrokakarot/GameScr;->doSelectSkill(Le/n0;Z)V

    .line 65
    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    sget v5, Lnrokakarot/Auto/AutoBikiep;->ttnlIndex:I

    aget-object v0, v0, v5

    invoke-static {v0, v8}, Lnrokakarot/GameScr;->doSelectSkill(Le/n0;Z)V

    .line 66
    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    sget v5, Lnrokakarot/Auto/AutoBikiep;->ttnlIndex:I

    aget-object v0, v0, v5

    invoke-static {v0}, Lnrokakarot/Skill;->Cooldown(Le/n0;)J

    move-result-wide v9

    cmp-long v0, v9, v2

    if-lez v0, :cond_7

    .line 68
    invoke-static {v1}, Lnrokakarot/GameScr;->setAuto(I)V

    .line 71
    :cond_7
    sput-boolean v8, Lnrokakarot/Auto/AutoBikiep;->ispause:Z

    .line 73
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 76
    :cond_9
    invoke-static {}, Lnrokakarot/Char;->CharFocus()Lg/e;

    move-result-object v0

    invoke-static {v0}, Lnrokakarot/Char;->isCanAttackOtherPlayer(Lg/e;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lnrokakarot/Auto/AutoBikiep;->lastTimeNext:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v5, v0, v2

    if-gtz v5, :cond_a

    invoke-static {}, Lnrokakarot/Char;->CharFocus()Lg/e;

    move-result-object v0

    if-nez v0, :cond_b

    .line 78
    :cond_a
    invoke-static {}, Lnrokakarot/Char;->findNextFocus()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnrokakarot/Auto/AutoBikiep;->lastTimeNext:J

    .line 81
    :cond_b
    invoke-static {}, Lnrokakarot/Char;->isCharge()Z

    move-result v0

    if-nez v0, :cond_c

    .line 83
    sget-boolean v0, Lnrokakarot/Auto/AutoBikiep;->ispause:Z

    if-ne v0, v8, :cond_c

    invoke-static {}, Lnrokakarot/Char;->Skill()Le/n0;

    move-result-object v0

    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v1

    aget-object v1, v1, v4

    if-eq v0, v1, :cond_c

    .line 85
    invoke-static {}, Lnrokakarot/GameScr;->onScreenSkill()[Le/n0;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0, v8}, Lnrokakarot/GameScr;->doSelectSkill(Le/n0;Z)V

    .line 87
    sput-boolean v4, Lnrokakarot/Auto/AutoBikiep;->ispause:Z

    .line 94
    :cond_c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :cond_d
    return-void
.end method
